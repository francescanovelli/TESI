library(dplyr)

rao <- rbind(rao_ant, rao_arg,
             rao_bis, rao_bon, rao_bou,
             rao_cav, rao_cham, rao_chav,
             rao_dev,
             rao_fuo, rao_gam,
             rao_lori,
             rao_mer, rao_mon, 
             rao_nev,
             rao_pai, rao_pec,
             rao_rac, rao_rbi, rao_ris,
             rao_sap, rao_sau, rao_seys, rao_sob, rao_ste,
             rao_tan, rao_ten, rao_ter, rao_tru, 
             rao_uba,
             rao_van, rao_vaul, rao_vcha, rao_vtn, rao_vts)

saveRDS(rao, "rao_30x30.rds")
rao <- readRDS("rao_30x30.rds")

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

ant <- ant %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#ARG
rao_arg <- arg %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

arg <- arg %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#BIS
rao_bis <- bis %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

bis <- bis %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#BON
rao_bon <- bon %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

bon <- bon %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#BOU
rao_bou <- bou %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

bou <- bou %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#CAV
rao_cav <- cav %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

cav <- cav %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#CHAM
rao_cham <- cham %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

cham <- cham %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#CHAV
rao_chav <- chav %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

chav <- chav %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#DEV
rao_dev <- dev %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

dev <- dev %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#FUO
rao_fuo <- fuo %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

fuo <- fuo %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#GAM
rao_gam <- gam %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

gam <- gam %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#LORI
rao_lori <- lori %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

lori <- lori %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#MER
rao_mer <- mer %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

mer <- mer %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#MON
rao_mon <- mon %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

mon <- mon %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#NEV
rao_nev <- nev %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

nev <- nev %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#PAI
rao_pai <- pai %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

pai <- pai %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#PEC
rao_pec <- pec %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

pec <- pec %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#RAC
rao_rac <- rac %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

rac <- rac %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#RBI
rao_rbi <- rbi %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

rbi <- rbi %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")


#RIS
rao_ris <- ris %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

ris <- ris %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#SAL
rao_sal <- sal %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

sal <- sal %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#SAP
rao_sap <- sap %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

sap <- sap %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")


#SAU
rao_sau <- sau %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

sau <- sau %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")


#SEYS
rao_seys <- seys %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

seys <- seys %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#SOB
rao_sob <- sob %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

sob <- sob %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#STE
rao_ste <- ste %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

ste <- ste %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#TAN
rao_tan <- tan %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

tan <- tan %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#TEN
rao_ten <- ten %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

ten <- ten %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#TER
rao_ter <- ter %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

ter <- ter %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#TRU
rao_tru <- tru %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

tru <- tru %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#UBA
rao_uba <- uba %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

uba <- uba %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#VAN
rao_van <- van %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

van <- van %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#VAUL
rao_vaul <- vaul %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

vaul <- vaul %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#VCHA
rao_vcha <- vcha %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

vcha <- vcha %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#VTN
rao_vtn <- vtn %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

vtn <- vtn %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")

#VTS
rao_vts <- vts %>%
  group_by(plot_id) %>%
  summarise(n_trees = n(),
            rao_zmax = rao_q_fun(zmax),
            .groups = "drop")

vts <- vts %>%
  group_by(plot_id) %>%
  summarise(
    across(-treeID, ~ mean(.x, na.rm = TRUE)),
    .groups = "drop")
