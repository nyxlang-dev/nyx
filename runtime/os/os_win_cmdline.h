// os_win_cmdline.h — línea de comando de Windows a partir de un argv.
// Solo funciones static, sin headers de Windows: se prueba en Linux
// (tests/runtime-unit/test_os_win_cmdline.c) y la usa os_win32.c.
//
// Por qué importa: en Windows el proceso hijo recibe UNA cadena y la parte él
// mismo (MSVCRT / CommandLineToArgvW). Armarla mal es el punto de inyección
// clásico: un argumento con comillas o barras que se escapa de su lugar y se
// vuelve otro argumento (o una opción). Por eso el escapado sigue al pie de la
// letra las reglas de ese parser.
//
// Los .bat/.cmd se rechazan (os_win_is_batch) por CVE-2024-24576 (BatBadBut):
// cmd.exe reparte los argumentos con OTRAS reglas, y ningún escapado de
// CommandLineToArgvW es seguro ahí.
// EN: builds a Windows command line from argv following CommandLineToArgvW
// rules; batch files are refused (BatBadBut) since cmd.exe parses differently.
#ifndef NYX_OS_WIN_CMDLINE_H
#define NYX_OS_WIN_CMDLINE_H

#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <errno.h>

// Escribe en out (cap bytes) la línea UTF-8 terminada en NUL; devuelve su
// largo sin el NUL, -EINVAL (n<1 o argumento con '\n') o -ENOSPC (no cabe).
static int64_t os_win_build_cmdline(const char* const* argv, int n, char* out, size_t cap) {
    if (n < 1 || !argv || !out) return -EINVAL;
    size_t w = 0;
    int ok = 1;  // pasa a 0 al quedarse sin espacio; se sigue para validar todo
#define OWC_PUT(ch) do { if (w + 1 < cap) out[w] = (char)(ch); else ok = 0; w++; } while (0)
    for (int i = 0; i < n; i++) {
        const char* a = argv[i];
        if (!a) return -EINVAL;
        int quote = (*a == 0);
        for (const char* p = a; *p; p++) {
            if (*p == '\n') return -EINVAL;
            if (*p == ' ' || *p == '\t' || *p == '\v' || *p == '"') quote = 1;
        }
        if (i > 0) OWC_PUT(' ');
        // argv[0] sale con '\' en vez de '/': cmd.exe busca la PRIMERA «/c» de
        // toda su línea, y en «C:/Windows/System32/cmd.exe /c x» la halla dentro
        // de «/cmd.exe» (falla con «The system cannot find the path specified»);
        // las comillas no lo evitan. Para Windows los dos son separador, y el
        // ejecutable ya va resuelto aparte en lpApplicationName.
        // EN: argv[0] is written with '\' — cmd.exe finds "/c" inside "/cmd.exe".
#define OWC_CH(c) ((i == 0 && (c) == '/') ? '\\' : (c))
        if (!quote) {
            for (const char* p = a; *p; p++) OWC_PUT(OWC_CH(*p));
            continue;
        }
        OWC_PUT('"');
        for (const char* p = a;; p++) {
            size_t slashes = 0;
            while (*p == '\\') { slashes++; p++; }
            if (*p == 0) {
                // barras finales: se duplican antes de la comilla de cierre
                for (size_t k = 0; k < slashes * 2; k++) OWC_PUT('\\');
                break;
            }
            if (*p == '"') {
                for (size_t k = 0; k < slashes * 2 + 1; k++) OWC_PUT('\\');
                OWC_PUT('"');
            } else {
                for (size_t k = 0; k < slashes; k++) OWC_PUT('\\');
                OWC_PUT(OWC_CH(*p));
            }
        }
        OWC_PUT('"');
    }
#undef OWC_PUT
#undef OWC_CH
    if (!ok || cap == 0 || w >= cap) return -ENOSPC;
    out[w] = 0;
    return (int64_t)w;
}

// 1 si path termina en .bat o .cmd (sin distinguir mayúsculas), ignorando
// espacios y puntos finales que Windows recorta ("x.bat ." también es batch).
static int os_win_is_batch(const char* path) {
    if (!path) return 0;
    size_t n = strlen(path);
    while (n > 0 && (path[n - 1] == ' ' || path[n - 1] == '.')) n--;
    if (n < 4 || path[n - 4] != '.') return 0;
    char e[3];
    for (int i = 0; i < 3; i++) {
        char c = path[n - 3 + i];
        e[i] = (c >= 'A' && c <= 'Z') ? (char)(c + 32) : c;
    }
    return memcmp(e, "bat", 3) == 0 || memcmp(e, "cmd", 3) == 0;
}

#endif
