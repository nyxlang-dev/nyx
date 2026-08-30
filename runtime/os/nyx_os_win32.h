// runtime/os/nyx_os_win32.h — declaraciones INTERNAS win32-only de la capa
// (NO es parte del contrato portable de nyx_os.h). Existe para que los dos
// consumidores del corrector (scheduler.c en su bloque de política GC, y el
// test win-only) compartan UNA declaración en vez de dos externs duplicados
// que pueden divergir (fix round 1 de W3 Task 3, M4). Tipos neutrales a
// propósito: este header se incluye desde scheduler.c bajo #ifdef _WIN32 y no
// puede arrastrar <windows.h> (ratchet de W1).
// EN: INTERNAL win32-only declarations of the layer (NOT part of the portable
// nyx_os.h contract). Exists so the corrector's two consumers (scheduler.c's
// GC-policy block and the win-only test) share ONE declaration instead of two
// duplicated externs that can drift (W3 Task 3 fix round 1, M4). Neutral
// types on purpose: included from scheduler.c under #ifdef _WIN32, must not
// drag in <windows.h> (W1 ratchet).
#ifndef NYX_OS_WIN32_H
#define NYX_OS_WIN32_H

#include <stdint.h>

// Corrector de sp POR EXCLUSIÓN (W3 Task 3 P3, rev3 §3): si el sp del thread
// `tid` NO cae dentro de su rango de stack NATIVO cacheado (registro poblado
// por os_ctx_thread_init), se corrige a su stack_base nativo. tid==0 o tid
// sin registrar => no toca. Contexto de ejecución: mundo parado, GC lock
// tomado — solo lecturas y comparaciones de dirección.
// EN: BY-EXCLUSION sp corrector: sp outside thread `tid`'s cached NATIVE
// stack range => corrected to its native stack_base. tid==0 or unregistered
// => untouched. Runs world-stopped under the GC lock.
void nyx_os_win32_sp_correct(void** sp_ptr, uint32_t tid);

#endif // NYX_OS_WIN32_H
