# faccio questo passaggio per tutte le tile che ho nel mio gradiente
library(lidR)
a <- readLAS()
a <- decimate_points(a, random(5))

# creo un unico file
ctg <- readLAScatalog("percorso/delle_tile/")
opt_output_files(ctg) <- "merged"
opt_chunk_size(ctg) <- 0

catalog_retile(ctg)

# poi per clippare ogni plot 30mx30m
clip1 <- clip_rectangle(
  las,
  xmin = 650000,
  ymin = 5100000,
  xmax = 651000,
  ymax = 5101000)

writeLAS(clip1, "zona1.laz")

######################################################################################################################################
# PER DARE IL TREE ID 
algo <- dalponte2016(chm, ttops)
las_seg <- segment_trees(las, algo)

# METRICHE DA ESTRARRE PER OGNI ALBERO
cloud_metrics(las, func = .stdmetrics)
pixel_metrics(las, func = .stdmetrics)
tree_metrics(las, func = .stdmetrics)
