library(dplyr)

rao <- rbind(
  rao_ant, rao_arg,
  rao_bis, rao_bon, rao_bou,
  rao_cham, 
  rao_dev,
  rao_lori,
  rao_mer, rao_mon,
  rao_nev,
  rao_pai, rao_pec,
  rao_rac, rao_rbi, rao_ris,
  rao_sap, rao_sau, rao_seys,
  rao_tan, rao_ten,
  rao_uba,
  rao_van, rao_vaul, rao_vcha, rao_vtn, rao_vts)

saveRDS(rao, "rao.rds")
rao <- readRDS("rao.rds")

rao_q_fun <- function(z) {
             n <- length(z)
             if (n < 2) return(NA_real_)
             dmat <- as.matrix(dist(z))
             p <- rep(1/n, n)
 as.numeric(t(p) %*% dmat %*% p)}

#ANT
rao_ant <- ant %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#ARG
rao_arg <- arg %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#BIS
rao_bis <- bis %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#BON
rao_bon <- bon %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#BOU
rao_bou <- bou %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#CHAM
rao_cham <- cham %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#DEV
rao_dev <- dev %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#LORI
rao_lori <- lori %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#MER
rao_mer <- mer %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#MON
rao_mon <- mon %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#NEV
rao_nev <- nev %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#PAI
rao_pai <- pai %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#PEC
rao_pec <- pec %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#RAC
rao_rac <- rac %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#RBI
rao_rbi <- rbi %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#RIS
rao_ris <- ris %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#SAP
rao_sap <- sap %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#SAU
rao_sau <- sau %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#SEYS
rao_seys <- seys %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#TAN
rao_tan <- tan %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#TEN
rao_ten <- ten %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#UBA
rao_uba <- uba %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#VAN
rao_van <- van %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#VAUL
rao_vaul <- vaul %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#VCHA
rao_vcha <- vcha %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#VTN
rao_vtn <- vtn %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

#VTS
rao_vts <- vts %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")
