# TESI
This repo is related to the thesis in lidR at UniBZ

cose importanti da controllare:
``` r
st_crs(las)
# se non è presente l'EPSG lo si assegna
st_crs(las) <- 32632
```

| Classe | Significato |
|---|---|
| 2 | Ground |
| 3 | Low vegetation |
| 4 | Medium vegetation |
| 5 | High vegetation |
| 6 | Building |
| 9 | Water |
