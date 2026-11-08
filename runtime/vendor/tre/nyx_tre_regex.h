/* nyx_tre_regex.h — la API POSIX <regex.h> del motor TRE de musl, con nombres
 * propios (nyx_tre_*) para que conviva con la libc de una plataforma que sí
 * trae regex (glibc, bionic) sin chocar en el enlace. Basada en
 * musl-1.2.5/include/regex.h; ver README.nyx.md.
 *
 * Quien la incluye ve también los nombres estándar (regex_t, regcomp, …) como
 * macros sobre los prefijados, así runtime/regex.c compila igual con este motor
 * o con el de la libc. Definir NYX_TRE_SIN_NOMBRES_POSIX antes de incluirla
 * para ver solo los prefijados (el test diferencial, que usa los dos motores).
 */
#ifndef NYX_TRE_REGEX_H
#define NYX_TRE_REGEX_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

/* musl usa un entero del ancho de un puntero; en Win64 `long` es de 32 bits. */
typedef ptrdiff_t nyx_tre_regoff_t;

typedef struct nyx_tre_re_pattern_buffer {
	size_t re_nsub;
	void *__opaque, *__padding[4];
	size_t __nsub2;
	char __padding2;
} nyx_tre_regex_t;

typedef struct {
	nyx_tre_regoff_t rm_so;
	nyx_tre_regoff_t rm_eo;
} nyx_tre_regmatch_t;

int nyx_tre_regcomp(nyx_tre_regex_t *preg, const char *regex, int cflags);
int nyx_tre_regexec(const nyx_tre_regex_t *preg, const char *string, size_t nmatch,
                    nyx_tre_regmatch_t pmatch[], int eflags);
void nyx_tre_regfree(nyx_tre_regex_t *preg);
size_t nyx_tre_regerror(int errcode, const nyx_tre_regex_t *preg, char *errbuf, size_t errbuf_size);

/* Las constantes son las mismas que las de glibc y musl. */
#define NYX_TRE_REG_EXTENDED 1
#define NYX_TRE_REG_ICASE    2
#define NYX_TRE_REG_NEWLINE  4
#define NYX_TRE_REG_NOSUB    8
#define NYX_TRE_REG_NOTBOL   1
#define NYX_TRE_REG_NOTEOL   2
#define NYX_TRE_REG_NOMATCH  1

#ifndef NYX_TRE_SIN_NOMBRES_POSIX
#define regex_t     nyx_tre_regex_t
#define regmatch_t  nyx_tre_regmatch_t
#define regoff_t    nyx_tre_regoff_t
#define regcomp     nyx_tre_regcomp
#define regexec     nyx_tre_regexec
#define regfree     nyx_tre_regfree
#define regerror    nyx_tre_regerror

#define REG_EXTENDED    1
#define REG_ICASE       2
#define REG_NEWLINE     4
#define REG_NOSUB       8

#define REG_NOTBOL      1
#define REG_NOTEOL      2

#define REG_OK          0
#define REG_NOMATCH     1
#define REG_BADPAT      2
#define REG_ECOLLATE    3
#define REG_ECTYPE      4
#define REG_EESCAPE     5
#define REG_ESUBREG     6
#define REG_EBRACK      7
#define REG_EPAREN      8
#define REG_EBRACE      9
#define REG_BADBR       10
#define REG_ERANGE      11
#define REG_ESPACE      12
#define REG_BADRPT      13

#define REG_ENOSYS      -1
#endif

#ifdef __cplusplus
}
#endif

#endif
