#WORK FLOW
LASfile <- system.file("extdata", "MixedConifer.laz", package="lidR")
las <- readLAS(LASfile)

# Classifico il terreno 
ground <- classify_ground(las, csf())
#oppure
ground <- filter_poi(las, Classification == 2)

# Creo un DTM
dtm <- rasterize_terrain(las, res = 1, algorithm = tin())
plot(dtm)

# Normalizzo le altezze
las_norm <- normalize_height(las, dtm)
plot(las_norm, color = "Z") # Z >= 0 per rimuovere valori negativi

# Creo una CHM
chm <- rasterize_canopy( las_norm, res = 0.5, algorithm = p2r())
plot(chm)

# Individuo i songoli alberi
ttops <- locate_trees(chm, lmf(ws = 5))
plot(chm)
plot(sf::st_geometry(ttops), add = TRUE, col = "red")

# Segmento le chiome
algo <- dalponte2016(chm, ttops)
las_seg <- segment_trees(las_norm, algo)
plot(las_seg, color = "treeID")



# Metriche
metrics <- crown_metrics(crowns, func = ~list(zmax = max(Z), zmean = mean(Z), n = length(Z)), geom = "convex")

# Densità
n_trees = length(unique(las$seg$treeID))
area = (area(las_seg)/1000)
density = n_trees/area

# Altezza massima
tree_heights <- tapplay(las_seg$Z, las_seg$treeID, max)

# Diametro stimato
dbh <- 0.5*tree_heights
