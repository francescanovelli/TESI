# TESI
This repo is related to the thesis in lidR at UniBZ

Cose importanti da controllare: l'EPSG se non è presente lo si assegna
``` r
st_crs(las)
st_crs(las) <- 25832
```

| Classe | Significato |
|---|---|
| 2 | Ground |
| 3 | Low vegetation |
| 4 | Medium vegetation |
| 5 | High vegetation |
| 6 | Building |
| 9 | Water |
