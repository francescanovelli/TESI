# TESI
This repo is related to the thesis in lidR at UniBZ

cose importanti da controllare:
``` r
st_crs(las)
# se non è presente l'EPSG lo si assegna
st_crs(las) <- 32632
```

Classe	Significato
2	      ground
3–5	    vegetazione
6	      building
9      	water
