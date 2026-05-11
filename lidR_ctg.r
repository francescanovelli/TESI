ctg <- readLAScatalog("laz/")
print(ctg)
plot(ctg)

# Chunk size, imposto la dimensione dei blocchi elaborati
opt_chunk_size(ctg) <- 250
