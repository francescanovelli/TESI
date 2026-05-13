## Esercizio per lidR

``` r
library(lidR)
LASfile <- system.file("extdata", "MixedConifer.laz", package="lidR")
las <- readLAS(LASfile)
``` 

Controllo l'EPSG, quanti punti ho e le coordinate
``` r
epsg(las)
npoints(las)
head(las@data[, c("X", "Y", "Z")])
``` 

Controllo se c'è una classificazione , plotto con colorazione per altezza o intensità 
``` r
table(las$Classification)
plot(las, color= "Z")
plot(las, color = "Intensity")
``` 

Filtro per punti >10m
```r
las_high <- filter_poi(las, Z > 20)
plot(las_high, color = "Z")
npoints(las_high)
``` 

Creo un terreno
```r
ground <- filter_poi(las, Classification == 2)
plot(ground, color = "Z")
``` 

Creo un DTM
```r
dtm <- rasterize_terrain(las,res= 1 , algorithm = knnidw())
plot(dtm)
``` 

Normalizzo le altezze e controllo i minimi ce siano il più vicino allo zero
```r
las_norm <- normalize_height(las, dtm)
plot(las_norm, color = "Z")
min(las_norm$Z)
``` 

Creo un CHM
```r
chm <- rasterize_canopy(las_norm, res = 0.5, algorithm =  p2r())
plot(chm)
``` 

Trovo le cime e conto quante sono, variano al viariare della `ws`
```r
tops <- locate_trees(chm, lmf(ws = 7))
plot(chm)
plot(sf::st_geometry(tops), add = TRUE, col = "red")
nrow(tops)
``` 

Segmentazione alberi e poi filtro per singolo albero
```r
dalp <- dalponte2016(chm, tops)
tree <- segment_trees(las, dalp)
plot(tree, color = "treeID")
length(unique(tree$treeID))

tree16 <- filter_poi(las, treeID == 16)
plot(tree16)
``` 

_________________________________________________________________________________________________
# creo un CTG
LASfile <- system.file("extdata","Megaplot.laz",
                       package = "lidR")

ctg <- readLAScatalog(LASfile)
plot(ctg)
opt_chunk_size(ctg) <- 250
dtm_ctg <- rasterize_terrain(ctg, res = 1,
                             algorithm = tin())
#metriche forestali
cloud_metrics(las_norm,.stdmetrics_z)

#mappa altezza media
metrics <- pixel_metrics(las_norm, ~mean(Z), res = 10)
plot(metrics,
     axes = TRUE,
     xlab = "Longitudine",
     ylab = "Latitudine",
     main = "Altezza media",
     col = terrain.colors(50))
