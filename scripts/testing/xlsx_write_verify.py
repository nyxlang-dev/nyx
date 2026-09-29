#!/usr/bin/env python3
# xlsx_write_verify.py — abre con openpyxl el libro que escribe test-462
# (std/xlsx, Task 5) y verifica lo que ve OTRO programa: valores, tipos (fechas como
# datetime, enteros como int), formatos de número, negrita, anchos y combinadas.
# Lo llama scripts/testing/run_xlsx_verify.sh. Uso: xlsx_write_verify.py <libro.xlsx>
import datetime, sys, openpyxl
wb = openpyxl.load_workbook(sys.argv[1])
assert wb.sheetnames == ['Libro de compras', 'Resumen'], wb.sheetnames
ws = wb['Libro de compras']
assert ws['A1'].value == 'Fecha' and ws['A1'].font.b
assert ws['B1'].value == 'Proveedor & Cía <1>' and ws['C1'].font.b
assert not ws['A2'].font.b
assert ws['A2'].value == datetime.datetime(2026, 9, 1), ws['A2'].value
assert ws['A2'].number_format == 'dd/mm/yyyy'
assert ws['A3'].value == datetime.datetime(1900, 2, 28), ws['A3'].value
assert ws['A4'].value == datetime.datetime(2024, 2, 29)
assert ws['B2'].value == '  Acme\tS.A.  ', repr(ws['B2'].value)
assert ws['B3'].value == 'ñandú'
assert ws['C2'].value == 1234.5 and ws['C2'].number_format == '0.00'
assert ws['C3'].value == -7.005 and ws['C3'].number_format == '0.000'
assert ws['B4'].value is None
assert ws['C4'].value == 42 and isinstance(ws['C4'].value, int) and ws['C4'].number_format == 'General'
assert ws['D4'].value is True and ws['D5'].value is False
assert ws['A5'].value == 100.0 and ws['A5'].number_format == '0.00' and ws['A5'].font.b
assert ws['B5'].value == 5 and ws['B5'].number_format == '0'
assert ws['C5'].value == 2.5 and ws['C5'].number_format == 'General'
assert ws.column_dimensions['A'].width == 14.0, ws.column_dimensions['A'].width
assert ws.column_dimensions['C'].width == 18.5
assert ws.column_dimensions['A'].customWidth
assert [str(r) for r in ws.merged_cells.ranges] == ['A7:C7']
assert ws['A7'].value == 'Total combinado'
g = wb['Resumen']
assert g['A1'].value == 'total' and g['B1'].value == 1234.5 and g['B1'].number_format == '0.00'
print('openpyxl ok')
