library(lidR)

LASfile <- system.file("extdata", "MixedConifer.laz", package="lidR")
las <- readLAS(LASfile)

#controllo l'EPSG
epsg(las)

#conto i punti
npoints(las)

#controllo le prime coordinate
head(las@data[, c("X", "Y", "Z")])

#vedo le classi 
table(las$Classification)


#plotto con colorazione per altezza o intensità
plot(las, color= "Z")
plot(las, color = "Intensity")

#filtro per punti >10m
las_high <- filter_poi(las, Z > 20)
plot(las_high, color = "Z")
npoints(las_high)

#creo un terreno
ground <- filter_poi(las, Classification == 2)
plot(ground, color = "Z")

#creo un DTM
dtm <- rasterize_terrain(las,res= 1 , algorithm = knnidw())
plot(dtm)

#normalizzo le altezze
las_norm <- normalize_height(las, dtm)
plot(las_norm, color = "Z")
min(las_norm$Z)

#creo un CHM
chm <- rasterize_canopy(las_norm, res = 0.5, algorithm =  p2r())
plot(chm)

#trovo le cime
tops <- locate_trees(chm, lmf(ws = 7))
plot(chm)
plot(sf::st_geometry(tops), add = TRUE, col = "red")
nrow(tops)

#segmentazione alberi
dalp <- dalponte2016(chm, tops)
tree <- segment_trees(las, dalp)
plot(tree, color = "treeID")
length(unique(tree$treeID))

#estraggo un singolo albero
tree16 <- filter_poi(las, treeID == 16)
plot(tree16)

##########################################################
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
