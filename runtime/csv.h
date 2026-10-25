// runtime/csv.h — núcleo del lector columnar de std/csv (arco csv-columnar).
// Ver runtime/csv.c para el contrato completo.
#ifndef NYX_CSV_H
#define NYX_CSV_H

#include <stdint.h>
#include <stdbool.h>
#include "strings.h"
#include "runtime-arrays.h"

// [error: String, filas: int, col_0, col_1, ...]; error == "" si salió bien.
// Una columna `cat` ocupa dos casillas: códigos (Array<int>) y diccionario (Array<String>).
nyx_array_t* nyx_csv_read(nyx_string* texto, nyx_string* esquema, int64_t delim,
                          int64_t header, int64_t max_rows);

// [error: String, esquema: String] — esquema propuesto mirando las primeras 1000 filas.
nyx_array_t* nyx_csv_guess_schema(nyx_string* texto, int64_t delim, int64_t header);

#endif
