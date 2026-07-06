library(lidR)

#PLOT ANT
ant_1400 <- readLAS("C:/LAS/A/ant_1400_3.laz")
ant_1610 <- readLAS("C:/LAS/A/ant_1610_3.laz")

#DTM
dtm_a <- rasterize_terrain(ant_1400, res= 1 , algorithm = knnidw())
dtm_b <- rasterize_terrain(ant_1610, res= 1 , algorithm = knnidw())

nlas_a <- filter_poi(normalize_height(ant_1400, dtm_a), Z >= 0)
nlas_a <- filter_poi(nlas_a, Z <= 40)
nlas_b <- filter_poi(normalize_height(ant_1610, dtm_b), Z >= 0)
nlas_b <- filter_poi(nlas_b, Z <= 40)

#CHM
chm_ant1400 <- rasterize_canopy(nlas_a, res = 0.5, algorithm =  p2r())
chm_ant1610 <- rasterize_canopy(nlas_b, res = 0.5, algorithm =  p2r())

#RAO
z <- values(chm_ant1400, mat = FALSE)
z <- z[!is.na(z)]
z <- sort(z)
n <- length(z)

rao_ant1400 <- (2 / n^2) * sum((2 * seq_len(n) - n - 1) * z)


z <- values(chm_ant1610, mat = FALSE)
z <- z[!is.na(z)]
z <- sort(z)
n <- length(z)

rao_ant1610 <- (2 / n^2) * sum((2 * seq_len(n) - n - 1) * z)


#Tree Tops
f <- function(x) {x * 0.1 + 3} 
tops_a <- locate_trees(nlas_a, lmf(f))
tops_b <- locate_trees(nlas_b, lmf(f))

#Segment
dalp_a <- dalponte2016(chm_ant1400, tops_a)
tree_a <- segment_trees(nlas_a, dalp_a)
dalp_b <- dalponte2016(chm_ant1610, tops_b)
tree_b <- segment_trees(nlas_b, dalp_b)

#Metriche per albero
tm_ant1400 <- tree_metrics(tree_a,  ~c(stdmetrics_z(Z),    
                                       list(zcv = sd(Z) / mean(Z))))
tm_ant1610 <- tree_metrics(tree_b,  ~c(stdmetrics_z(Z),   
                                       list(zcv = sd(Z) / mean(Z))))

#METRICHE PER PLOT
cm_ant1400 <- cloud_metrics(nlas_a, ~c(stdmetrics_z(Z),
                           list(zcv = sd(Z) / mean(Z))))
cm_ant1610 <- cloud_metrics(nlas_b, ~c(stdmetrics_z(Z), 
                           list(zcv = sd(Z) / mean(Z))))

#METRICHE pixel 10m
pm10_ant1400 <- pixel_metrics(nlas_a, 
                ~c(stdmetrics_z(Z), list(zcv = sd(Z) / mean(Z))), res = 10)
pm10_ant1400 <- global(pm10_ant1400, fun = "mean", na.rm = TRUE)
pm10_ant1400 <- setNames(as.data.frame(t(pm10_ant1400[[1]])), rownames(pm10_ant1400))


pm10_ant1610 <- pixel_metrics(nlas_b, 
                ~c(stdmetrics_z(Z), list(zcv = sd(Z) / mean(Z))), res = 10)
pm10_ant1610 <- global(pm10_ant1610, fun = "mean", na.rm = TRUE)
pm10_ant1610 <- setNames(as.data.frame(t(pm10_ant1610[[1]])), rownames(pm10_ant1610))

#METRICHE pixel 1m
pm_ant1400 <- pixel_metrics(nlas_a, 
              ~c(stdmetrics_z(Z), list(zcv = sd(Z) / mean(Z))), res = 1)
pm_ant1400 <- global(pm_ant1400, fun = "mean", na.rm = TRUE)
pm_ant1400 <- setNames(as.data.frame(t(pm_ant1400[[1]])), rownames(pm_ant1400))


pm_ant1610 <- pixel_metrics(nlas_b, 
              ~c(stdmetrics_z(Z), list(zcv = sd(Z) / mean(Z))), res = 1)
pm_ant1610 <- global(pm_ant1610, fun = "mean", na.rm = TRUE)
pm_ant1610 <- setNames(as.data.frame(t(pm_ant1610[[1]])), rownames(pm_ant1610))
