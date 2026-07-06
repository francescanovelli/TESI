library(dplyr)

rao_q_fun <- function(z) {
  n <- length(z)
  if (n < 2) return(NA_real_)
  
  dmat <- as.matrix(dist(z))
  p <- rep(1/n, n)
  
  as.numeric(t(p) %*% dmat %*% p)
}

rao_ant <- ant %>%
  group_by(plot_id) %>%
  summarise(
    n_trees = n(),
    rao_zmax = rao_q_fun(zmax),
    .groups = "drop"
  )

rao_ant
