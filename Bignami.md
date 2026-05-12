``` r
library(lidRviewer)
library(gstat)
library(lidR)

# file di esempio
LASfile <- system.file("extdata", "Megaplot.laz", package="lidR")
las <- readLAS(LASfile, filter = "-keep_random_fraction 0.5")
``` 

Controllo se il file `.las` funziona correttamente

``` r 
las_check(las)
```

# DIVIDO DUE CLASSI USANDO IL FILTRO
# POI LE PLOTTO INSIEME AGGIUNGENDO L'UNO ALL'ALTRO
``` r
nonveg <- filter_poi(las, Classification != LASHIGHVEGETATION)
veg <- filter_poi(las, Classification == LASHIGHVEGETATION)

x <- plot(nonveg, color = "Classification",
          bg = "white", size = 3)
plot(veg, add = x)
```

# RENDERING 3D AVANZATO
# localizzo le cime degli alberi
```  r 
ttops <- locate_trees(las, lmf(ws = 5)) 

offsets <- plot(las, bg = "white", size = 3)
add_treetops3d(offsets, ttops)
```

# estraggo le coordinate delle punte
``` r
x <- sf::st_coordinates(ttops)[,1] - offsets[1] 
y <- sf::st_coordinates(ttops)[,2] - offsets[2] 
z <- ttops$Z
```
``` r
# Creo le matrici
x <- rep(x, each = 2)
y <- rep(y, each = 2)
tmp <- numeric(2*length(z)) 
tmp[2*1:length(z)] <- z
z <- tmp
M <- cbind(x,y,z)

# Display lines
rgl::segments3d(M, col = "brown", lwd = 2)

# è possibile fare dei plot anche con voxel
vox <- voxelize_points(las, 6)
plot(vox, voxel = TRUE, bg = "white", legend = TRUE)

#creo dei transetti e poi faccio un grafico con ggplot
p1 <- c(273457, 5274357)
p2 <- c(273542, 5274542)
las_tr <- clip_transect(las, p1, p2, width = 5, xz = TRUE)

ggplot(payload(las_tr), aes(X,Z, color = Z)) + 
  geom_point(size = 0.5) + 
  coord_equal() + 
  theme_minimal() +
  scale_color_gradientn(colours = height.colors(50))

# plotto solo il terreno
gnd <- filter_ground(las)
plot(gnd, size = 3, bg = "white") 


# creo un DTM
LASfile <- system.file("extdata", "Topography.laz", package="lidR")
las <- readLAS(LASfile, select = "xyzc")
plot(las, size = 3, bg = "white")

dtm_tin <- rasterize_terrain(las, res = 1, algorithm = tin())
plot_dtm3d(dtm_tin, bg = "white") 
dtm_idw <- rasterize_terrain(las, algorithm = knnidw(k = 10L, p = 2))
plot_dtm3d(dtm_idw, bg = "white") 

# utilizzo il DTM per normalizzare le altezze
dtm <- rasterize_terrain(las, 1, knnidw())
nlas <- las - dtm
plot(nlas, size = 4, bg = "white")
# uso un istogramma per vedere se 
# la normalizzazione ha funzionato
hist(filter_ground(nlas)$Z, breaks = seq(-0.6, 0.6, 0.01),
     main = "", xlab = "Elevation")

# uso una funzione per normalizzare
nlas <- normalize_height(las, knnidw())
hist(filter_ground(nlas)$Z, breaks = seq(-0.6, 0.6, 0.01),
     main = "", xlab = "Elevation")


#Digital Surface Model 
#and Canopy Height model
LASfile <- system.file("extdata", "MixedConifer.laz", package ="lidR")
las <- readLAS(LASfile)
plot(las, size = 3, bg = "white")

#CHM
chm <- rasterize_canopy(las, res = 0.5, p2r(0.2, na.fill = tin()))
plot(chm, col = height.colors(25))

#DMS
LASfile <- system.file("extdata", "Topography.laz", package = "lidR")
las2 <- readLAS(LASfile)
las2 <- normalize_height(las2, algorithm = tin())
chm <- rasterize_canopy(las2, res = 0.5, 
                        algorithm = dsmtin(max_edge = 8))
plot(chm, col = height.colors(25))


#Individual Tree Detection
LASfile <- system.file("extdata", "MixedConifer.laz", package="lidR")
las <- readLAS(LASfile, select = "xyzr", filter = "-drop_z_below 0")

chm <- rasterize_canopy(las, 0.5, pitfree(subcircle = 0.2))
plot(las, bg = "white", size = 4)

#Local Maximum Filter 
ttops <- locate_trees(las, lmf(ws = 7))
plot(chm, col = height.colors(50))
plot(sf::st_geometry(ttops), add = TRUE, pch = 3)
x <- plot(las, bg = "white", size = 4)
add_treetops3d(x, ttops)


#DENSITà
las_seg <- segment_trees(las, li2012(R = 3, speed_up = 5))
n_trees <- length(unique(las_seg$treeID))
area_ha <- (area(las_seg)/10000) 
density <- n_trees / area_ha
density

#ALTEZZA MAX e DIAMETRO
tree_heights <- tapply(las_seg$Z, las_seg$treeID, max)
summary(tree_heights)
DBH <- 0.5 * tree_heights
summary(DBH)

#Individual Tree Segmentation
#nel primo passaggio creo ogni singolo albero
#nel secondo passaggio divido la foresta
algo <- dalponte2016(chm, ttops)
las_seg <- segment_trees(las, algo)
plot(las_seg, bg = "white", size = 4, color = "treeID") 

# posso poi estrarre un singolo albero
tree67 <- filter_poi(las, treeID == 67)
plot(tree67, size = 8, bg = "white")

# metriche della chioma
crowns <- crown_metrics(las, func = .stdtreemetrics, geom = "convex")
plot(crowns["convhull_area"], main = "Crown area")
```


# METRICHE
``` r
LASfile <- system.file("extdata", "MixedConifer.laz", package ="lidR")
las <- readLAS(LASfile)

metrics <- cloud_metrics(las, func = .stdmetrics_z)
str(head(metrics))

cloud_metrics(las, func = .stdmetrics)
pixel_metrics(las, func = .stdmetrics)
tree_metrics(las, func = .stdmetrics)
voxel_metrics(las, func = .stdmetrics)
```

Definisco la metrica da calcolare e applico a diversi metodi la metrica
```r
m <- ~list(avgI = mean(Intensity))

a <- pixel_metrics(las, m, res = 5)
b <- crown_metrics(las, m, geom = "point")
c <- crown_metrics(las, m, geom = "convex")
d <- hexagon_metrics(las, m, area = 25)
```

## PLOT
``` r
par(mfrow=c(2,2))
plot(a, col = heat.colors(15), legend = FALSE)
plot(b["avgI"], pal = heat.colors, pch = 19, cex = 1, axes = TRUE, key.pos = NULL, reset = FALSE)
plot(c["avgI"], pal = heat.colors, axes = TRUE, key.pos = NULL, reset = FALSE)
plot(d["avgI"], pal = heat.colors, axes = TRUE, key.pos = NULL, reset = FALSE)
```
