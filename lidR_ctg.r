ctg <- readLAScatalog()
plot(ctg)

# Chunk size, imposto la dimensione dei blocchi elaborati
opt_chunk_size(ctg) <- 250

# Buffer, fondamentale per evitare edge effects
opt_chunk_buffer(ctg) <- 30

# Allinemento
opt_chunk_alignment(ctg) <- c(1000, 1000)

# Plotto per controllare
plot(ctg, chunk = TRUE)

# Posso anche selezionare o filtrare solo per certe caratteristiche
opt_select(ctg) <- "xyz"
LAS <- clip_circle(ctg, 273500, 5274500, 10)
opt_filter(ctg) <- "-keep_first -drop_z_below 2"

# Classifico il terreno
ctg_ground <- classify_ground(ctg, algorithm = csf())

# Creo un DTM
dtm <- rasterize_terrain(ctg_ground, res = 1, algorithm = tin())

# Normalizzo le altezze 
ctg_norm <- normalize_height(ctg_ground, tin())

# Creo un CHM
chm <- rasterize_canopy(ctg_norm, res = 0.5, algorithm = pitfree(thresholds = c(0,2,5,10,15), max_edge = c(0,1)))

# Individuo gli alberi
ttops <- locate_trees(chm, lmf(ws = 5))

# Segmentazione degli alberi
algo <- dalponte2016(chm, ttops)
segment_trees(ctg_norm, algo)

# Metriche forestali 
metrics <- pixel_metrics(ctg_norm, ~list(zmean = mean(Z), zmax = max(Z), p95 = quantile(Z, 0.95)), res = 20)

# Metriche per singolo albero
tree_metrics <- crown_metrics(ctg_norm, func = ~list(hmax = max(Z), hmean = mean(Z)))

# PER NON CARICARE I FILE TUTTE LE VOLTE
opt_output_files(ctg) <- "output/{*}"
# il {*} viene sostituito dal nome della tile
# Esempio 
opt_output_files(ctg) <- "ground/{*}"
classify_ground(ctg, csf())
# Serve per produrre ground/tile_001.laz
# ground/tile_002.laz senza aprire tutti i file
