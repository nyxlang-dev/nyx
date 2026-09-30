// runtime/os/errno_canon.h — tabla errno-de-la-plataforma -> numeración de
// LINUX (W4 Task 9). Decisión de Ottavio (2026-09-30): el espacio canónico
// de `e.code` en Nyx es el errno de Linux en TODAS las plataformas, porque
// std/error.nx (errno_to_kind) y los expected/ de los tests están escritos
// con esos números.
//
// ES: la tabla va por NOMBRE simbólico (`case ECONNREFUSED: return 111;`), no
// por número: el mismo código es correcto contra la CRT de MSVC, macOS/BSD y
// WASI, y en Linux es identidad por construcción. Cada entrada va bajo #if
// defined(...) porque no todas las plataformas definen todos los nombres. Los
// alias que en OTRA plataforma tienen valor propio (EWOULDBLOCK, ENOTSUP,
// EDEADLOCK: en MSVC 140, 129 y 36) se guardan contra el duplicado de case en
// las plataformas donde son el mismo número. Lo que no está en la tabla sale
// igual (no hay mejor respuesta que el número crudo). Generada desde
// asm-generic/errno-base.h + asm-generic/errno.h (Linux) — 131 nombres.
// Solo la incluyen las implementaciones de la capa (os_win32.c, os_posix.c,
// os_wasm.c).
// EN: platform errno -> LINUX numbering, keyed by symbolic NAME so the same
// code is right on the MSVC CRT, macOS/BSD and WASI, and an identity on Linux.
#ifndef NYX_OS_ERRNO_CANON_H
#define NYX_OS_ERRNO_CANON_H
#include <errno.h>

static inline int nyx_errno_canon_table(int e) {
    switch (e) {
#if defined(EPERM)
    case EPERM: return 1;
#endif
#if defined(ENOENT)
    case ENOENT: return 2;
#endif
#if defined(ESRCH)
    case ESRCH: return 3;
#endif
#if defined(EINTR)
    case EINTR: return 4;
#endif
#if defined(EIO)
    case EIO: return 5;
#endif
#if defined(ENXIO)
    case ENXIO: return 6;
#endif
#if defined(E2BIG)
    case E2BIG: return 7;
#endif
#if defined(ENOEXEC)
    case ENOEXEC: return 8;
#endif
#if defined(EBADF)
    case EBADF: return 9;
#endif
#if defined(ECHILD)
    case ECHILD: return 10;
#endif
#if defined(EAGAIN)
    case EAGAIN: return 11;
#endif
#if defined(ENOMEM)
    case ENOMEM: return 12;
#endif
#if defined(EACCES)
    case EACCES: return 13;
#endif
#if defined(EFAULT)
    case EFAULT: return 14;
#endif
#if defined(ENOTBLK)
    case ENOTBLK: return 15;
#endif
#if defined(EBUSY)
    case EBUSY: return 16;
#endif
#if defined(EEXIST)
    case EEXIST: return 17;
#endif
#if defined(EXDEV)
    case EXDEV: return 18;
#endif
#if defined(ENODEV)
    case ENODEV: return 19;
#endif
#if defined(ENOTDIR)
    case ENOTDIR: return 20;
#endif
#if defined(EISDIR)
    case EISDIR: return 21;
#endif
#if defined(EINVAL)
    case EINVAL: return 22;
#endif
#if defined(ENFILE)
    case ENFILE: return 23;
#endif
#if defined(EMFILE)
    case EMFILE: return 24;
#endif
#if defined(ENOTTY)
    case ENOTTY: return 25;
#endif
#if defined(ETXTBSY)
    case ETXTBSY: return 26;
#endif
#if defined(EFBIG)
    case EFBIG: return 27;
#endif
#if defined(ENOSPC)
    case ENOSPC: return 28;
#endif
#if defined(ESPIPE)
    case ESPIPE: return 29;
#endif
#if defined(EROFS)
    case EROFS: return 30;
#endif
#if defined(EMLINK)
    case EMLINK: return 31;
#endif
#if defined(EPIPE)
    case EPIPE: return 32;
#endif
#if defined(EDOM)
    case EDOM: return 33;
#endif
#if defined(ERANGE)
    case ERANGE: return 34;
#endif
#if defined(EDEADLK)
    case EDEADLK: return 35;
#endif
#if defined(ENAMETOOLONG)
    case ENAMETOOLONG: return 36;
#endif
#if defined(ENOLCK)
    case ENOLCK: return 37;
#endif
#if defined(ENOSYS)
    case ENOSYS: return 38;
#endif
#if defined(ENOTEMPTY)
    case ENOTEMPTY: return 39;
#endif
#if defined(ELOOP)
    case ELOOP: return 40;
#endif
#if defined(ENOMSG)
    case ENOMSG: return 42;
#endif
#if defined(EIDRM)
    case EIDRM: return 43;
#endif
#if defined(ECHRNG)
    case ECHRNG: return 44;
#endif
#if defined(EL2NSYNC)
    case EL2NSYNC: return 45;
#endif
#if defined(EL3HLT)
    case EL3HLT: return 46;
#endif
#if defined(EL3RST)
    case EL3RST: return 47;
#endif
#if defined(ELNRNG)
    case ELNRNG: return 48;
#endif
#if defined(EUNATCH)
    case EUNATCH: return 49;
#endif
#if defined(ENOCSI)
    case ENOCSI: return 50;
#endif
#if defined(EL2HLT)
    case EL2HLT: return 51;
#endif
#if defined(EBADE)
    case EBADE: return 52;
#endif
#if defined(EBADR)
    case EBADR: return 53;
#endif
#if defined(EXFULL)
    case EXFULL: return 54;
#endif
#if defined(ENOANO)
    case ENOANO: return 55;
#endif
#if defined(EBADRQC)
    case EBADRQC: return 56;
#endif
#if defined(EBADSLT)
    case EBADSLT: return 57;
#endif
#if defined(EBFONT)
    case EBFONT: return 59;
#endif
#if defined(ENOSTR)
    case ENOSTR: return 60;
#endif
#if defined(ENODATA)
    case ENODATA: return 61;
#endif
#if defined(ETIME)
    case ETIME: return 62;
#endif
#if defined(ENOSR)
    case ENOSR: return 63;
#endif
#if defined(ENONET)
    case ENONET: return 64;
#endif
#if defined(ENOPKG)
    case ENOPKG: return 65;
#endif
#if defined(EREMOTE)
    case EREMOTE: return 66;
#endif
#if defined(ENOLINK)
    case ENOLINK: return 67;
#endif
#if defined(EADV)
    case EADV: return 68;
#endif
#if defined(ESRMNT)
    case ESRMNT: return 69;
#endif
#if defined(ECOMM)
    case ECOMM: return 70;
#endif
#if defined(EPROTO)
    case EPROTO: return 71;
#endif
#if defined(EMULTIHOP)
    case EMULTIHOP: return 72;
#endif
#if defined(EDOTDOT)
    case EDOTDOT: return 73;
#endif
#if defined(EBADMSG)
    case EBADMSG: return 74;
#endif
#if defined(EOVERFLOW)
    case EOVERFLOW: return 75;
#endif
#if defined(ENOTUNIQ)
    case ENOTUNIQ: return 76;
#endif
#if defined(EBADFD)
    case EBADFD: return 77;
#endif
#if defined(EREMCHG)
    case EREMCHG: return 78;
#endif
#if defined(ELIBACC)
    case ELIBACC: return 79;
#endif
#if defined(ELIBBAD)
    case ELIBBAD: return 80;
#endif
#if defined(ELIBSCN)
    case ELIBSCN: return 81;
#endif
#if defined(ELIBMAX)
    case ELIBMAX: return 82;
#endif
#if defined(ELIBEXEC)
    case ELIBEXEC: return 83;
#endif
#if defined(EILSEQ)
    case EILSEQ: return 84;
#endif
#if defined(ERESTART)
    case ERESTART: return 85;
#endif
#if defined(ESTRPIPE)
    case ESTRPIPE: return 86;
#endif
#if defined(EUSERS)
    case EUSERS: return 87;
#endif
#if defined(ENOTSOCK)
    case ENOTSOCK: return 88;
#endif
#if defined(EDESTADDRREQ)
    case EDESTADDRREQ: return 89;
#endif
#if defined(EMSGSIZE)
    case EMSGSIZE: return 90;
#endif
#if defined(EPROTOTYPE)
    case EPROTOTYPE: return 91;
#endif
#if defined(ENOPROTOOPT)
    case ENOPROTOOPT: return 92;
#endif
#if defined(EPROTONOSUPPORT)
    case EPROTONOSUPPORT: return 93;
#endif
#if defined(ESOCKTNOSUPPORT)
    case ESOCKTNOSUPPORT: return 94;
#endif
#if defined(EOPNOTSUPP)
    case EOPNOTSUPP: return 95;
#endif
#if defined(EPFNOSUPPORT)
    case EPFNOSUPPORT: return 96;
#endif
#if defined(EAFNOSUPPORT)
    case EAFNOSUPPORT: return 97;
#endif
#if defined(EADDRINUSE)
    case EADDRINUSE: return 98;
#endif
#if defined(EADDRNOTAVAIL)
    case EADDRNOTAVAIL: return 99;
#endif
#if defined(ENETDOWN)
    case ENETDOWN: return 100;
#endif
#if defined(ENETUNREACH)
    case ENETUNREACH: return 101;
#endif
#if defined(ENETRESET)
    case ENETRESET: return 102;
#endif
#if defined(ECONNABORTED)
    case ECONNABORTED: return 103;
#endif
#if defined(ECONNRESET)
    case ECONNRESET: return 104;
#endif
#if defined(ENOBUFS)
    case ENOBUFS: return 105;
#endif
#if defined(EISCONN)
    case EISCONN: return 106;
#endif
#if defined(ENOTCONN)
    case ENOTCONN: return 107;
#endif
#if defined(ESHUTDOWN)
    case ESHUTDOWN: return 108;
#endif
#if defined(ETOOMANYREFS)
    case ETOOMANYREFS: return 109;
#endif
#if defined(ETIMEDOUT)
    case ETIMEDOUT: return 110;
#endif
#if defined(ECONNREFUSED)
    case ECONNREFUSED: return 111;
#endif
#if defined(EHOSTDOWN)
    case EHOSTDOWN: return 112;
#endif
#if defined(EHOSTUNREACH)
    case EHOSTUNREACH: return 113;
#endif
#if defined(EALREADY)
    case EALREADY: return 114;
#endif
#if defined(EINPROGRESS)
    case EINPROGRESS: return 115;
#endif
#if defined(ESTALE)
    case ESTALE: return 116;
#endif
#if defined(EUCLEAN)
    case EUCLEAN: return 117;
#endif
#if defined(ENOTNAM)
    case ENOTNAM: return 118;
#endif
#if defined(ENAVAIL)
    case ENAVAIL: return 119;
#endif
#if defined(EISNAM)
    case EISNAM: return 120;
#endif
#if defined(EREMOTEIO)
    case EREMOTEIO: return 121;
#endif
#if defined(EDQUOT)
    case EDQUOT: return 122;
#endif
#if defined(ENOMEDIUM)
    case ENOMEDIUM: return 123;
#endif
#if defined(EMEDIUMTYPE)
    case EMEDIUMTYPE: return 124;
#endif
#if defined(ECANCELED)
    case ECANCELED: return 125;
#endif
#if defined(ENOKEY)
    case ENOKEY: return 126;
#endif
#if defined(EKEYEXPIRED)
    case EKEYEXPIRED: return 127;
#endif
#if defined(EKEYREVOKED)
    case EKEYREVOKED: return 128;
#endif
#if defined(EKEYREJECTED)
    case EKEYREJECTED: return 129;
#endif
#if defined(EOWNERDEAD)
    case EOWNERDEAD: return 130;
#endif
#if defined(ENOTRECOVERABLE)
    case ENOTRECOVERABLE: return 131;
#endif
#if defined(ERFKILL)
    case ERFKILL: return 132;
#endif
#if defined(EHWPOISON)
    case EHWPOISON: return 133;
#endif
    // Alias con valor propio en alguna plataforma (MSVC: EWOULDBLOCK 140,
    // ENOTSUP 129). En Linux son el MISMO número que su par y no llevan case.
#if defined(EWOULDBLOCK) && defined(EAGAIN) && (EWOULDBLOCK != EAGAIN)
    case EWOULDBLOCK: return 11;
#endif
#if defined(ENOTSUP) && defined(EOPNOTSUPP) && (ENOTSUP != EOPNOTSUPP)
    case ENOTSUP: return 95;
#endif
#if defined(EDEADLOCK) && defined(EDEADLK) && (EDEADLOCK != EDEADLK)
    case EDEADLOCK: return 35;
#endif
    // MSVC: «otro error» sin equivalente POSIX -> EIO.
#if defined(EOTHER)
    case EOTHER: return 5;
#endif
    default: return e;
    }
}

#endif
