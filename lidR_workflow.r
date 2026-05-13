LASfile <- system.file("extdata", "MixedConifer.laz", package="lidR")
las <- readLAS(LASfile)

# Classifico il terreno 
ground <- classify_ground(las, csf())

#oppure posso filatrare per terreno già classificato
ground <- filter_poi(las, Classification == 2)

# Creo un DTM
dtm <- rasterize_terrain(las, res = 1, algorithm = tin())
plot(dtm)

# Normalizzo le altezze
las_norm <- normalize_height(las, dtm)
plot(las_norm, color = "Z") # Z >= 0 per rimuovere valori negativi

# Creo una CHM
chm <- rasterize_canopy(las_norm, res = 0.5, algorithm = p2r())
plot(chm)

# Individuo i songoli alberi
ttops <- locate_trees(chm, lmf(ws = 5))
plot(chm)
plot(sf::st_geometry(ttops), add = TRUE, col = "red")

# per plottarli in 3D
plot(las) |> add_treetops3d(ttops)

# Segmento le chiome
algo <- dalponte2016(chm, ttops)
las_seg <- segment_trees(las_norm, algo)
plot(las_seg, color = "treeID")

# Per indentificare un singolo albero
treen <- filter_poi(las_seg, treeID == n)


# Metriche della nuvola
metrics <- crown_metrics(crowns, func = ~list(zmax = max(Z), zmean = mean(Z), n = length(Z)), geom = "convex")

# Metriche del singolo albero
treen <- tree_metrics()

# Densità
n_trees = length(unique(las$seg$treeID))
area = (area(las_seg)/1000)
density = n_trees/area

# Altezza massima
tree_heights <- tapply(las_seg$Z, las_seg$treeID, max)

# Diametro stimato
dbh <- 0.5*tree_heights

# Identifico la distanza tra punti vicini
dst = knn_distance(las)
plot(dst, color = "distance", breaks = "quantile", legend = TRUE)
