# Simpan ke dalam file excel .xlsx ----
library(openxlsx)

## Buat Excel WorkBook
OUT <- createWorkbook()

## buat Sheet menurut masing-masing kode provinsi
walk(.x = pspa_nest$id_provinsi, .f = ~ addWorksheet(OUT, .x))

## map(.x = by_prov$id_prov, .f = ~ print) # Cek masing-masing sheet
walk2(.x = pspa_nest$id_provinsi, .y = pspa_nest$data, .f = ~ writeData(OUT, sheet = .x, x = .y))

## Export File
saveWorkbook(OUT, "data/output/PSPA-2017-sampai-2019-per-provinsi.xlsx")
