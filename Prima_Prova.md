``` r
library(lidR)

a <- readLAS("C:/LAS/LHD_FXX_1006_6508_PTS_LAMB93_IGN69.copc.laz")
a <- decimate_points(a, random(5))

b <-readLAS("C:/LAS/LHD_FXX_1005_6509_PTS_LAMB93_IGN69.copc.laz")
b <- decimate_points(b, random(5))

c <-readLAS("C:/LAS/LHD_FXX_1005_6508_PTS_LAMB93_IGN69.copc.laz")
c <- decimate_points(c, random(5))
```
 
### Ground
``` r
ground_a <- filter_poi(a, Classification == 2)
ground_b <- filter_poi(b, Classification == 2)
ground_c <- filter_poi(c, Classification == 2)
plot(ground_a, color = "Z")
plot(ground_b, color = "Z")
plot(ground_c, color = "Z")
``` 

### DTM
``` r
dtm_a <- rasterize_terrain(a,res= 1 , algorithm = knnidw())
dtm_b <- rasterize_terrain(b,res= 1 , algorithm = knnidw())
dtm_c <- rasterize_terrain(c,res= 1 , algorithm = knnidw())

nlas_a <- normalize_height(a, dtm_a)
nlas_b <- normalize_height(b, dtm_b)
nlas_c <- normalize_height(c, dtm_c)
```

### CHM
``` r
chm_a <- rasterize_canopy(nlas_a, res = 0.5, algorithm =  p2r())
chm_b <- rasterize_canopy(nlas_b, res = 0.5, algorithm =  p2r())
chm_c <- rasterize_canopy(nlas_c, res = 0.5, algorithm =  p2r())
```

### Tree Tops
``` r
tops_a <- locate_trees(chm_a, lmf(ws = 7))
tops_b <- locate_trees(chm_b, lmf(ws = 7))
tops_c <- locate_trees(chm_c, lmf(ws = 7))
```

### Segment
``` r
dalp_a <- dalponte2016(chm_a, tops_a)
tree_a <- segment_trees(nlas_a, dalp_a)
dalp_b <- dalponte2016(chm_b, tops_b)
tree_b <- segment_trees(nlas_b, dalp_b)
dalp_c <- dalponte2016(chm_c, tops_c)
tree_c <- segment_trees(nlas_c, dalp_c)
```

## METRICHE con altezze normalizzate
``` r 
cm_a <- cloud_metrics(nlas_a, func = .stdmetrics)
pm_a <- pixel_metrics(nlas_a, func = .stdmetrics, res = 20)
cm_b <- cloud_metrics(nlas_b, func = .stdmetrics)
pm_b <- pixel_metrics(nlas_b, func = .stdmetrics, res = 20)
cm_c <- cloud_metrics(nlas_c, func = .stdmetrics)
pm_c <- pixel_metrics(nlas_c, func = .stdmetrics, res = 20)
```

## METRICHE con segmentazione
``` r
tm_a <- tree_metrics(tree_a, func = .stdmetrics)
crm_a <- crown_metrics(tree_a, func = .stdmetrics)
tm_b <- tree_metrics(tree_b, func = .stdmetrics)
crm_b <- crown_metrics(tree_b, func = .stdmetrics)
tm_c <- tree_metrics(tree_c, func = .stdmetrics)
crm_c <- crown_metrics(tree_c, func = .stdmetrics)
```
