// ============================================
// FILE-IO.H - File I/O Runtime Header for Nyx v0.12.2
// ============================================

#ifndef NYX_FILE_IO_H
#define NYX_FILE_IO_H

#include <stdint.h>

// ===== FILE I/O FUNCTIONS =====

/**
 * Leer archivo completo como String
 * @param path - Ruta al archivo
 * @return String con el contenido (GC-allocated)
 */
char* nyx_read_file(char* path);

/**
 * Escribir String a archivo
 * @param path - Ruta al archivo
 * @param content - Contenido a escribir
 * @return 1 si exitoso, panic si error
 */
int nyx_write_file(char* path, char* content);

/**
 * Verificar si archivo existe
 * @param path - Ruta al archivo
 * @return 1 si existe, 0 si no
 */
int nyx_file_exists(char* path);

/**
 * Contar líneas en un string
 * @param str - String a analizar
 * @return Número de líneas
 */
int nyx_count_lines(char* str);

/**
 * Flush file data to disk (fsync). Returns 0 on success, -1 on error.
 */
int64_t nyx_fsync(int64_t fd);

/**
 * Flush file data, not metadata, to disk (fdatasync). Returns 0 on success, -1 on error.
 */
int64_t nyx_fdatasync(int64_t fd);

/**
 * Test function
 */
void nyx_fileio_test(void);

#endif // NYX_FILE_IO_H
