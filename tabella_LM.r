dati <- read.csv("metriche.csv")

modmax <- lm(richness ~ zmax, data = dati)
summary_modmax <- summary(modmax)

modmean <- lm(richness ~ zmean, data = dati)
summary_modmean <- summary(modmean)

modsd <- lm(richness ~ zsd, data = dati)
summary_modsd <- summary(modsd)

modkurt <- lm(richness ~ zkurt, data = dati)
summary_modkurt <- summary(modkurt)

modskew <- lm(richness ~ zskew, data = dati)
summary_modskew <- summary(modskew)

modq5 <- lm(richness ~ zq5, data = dati)
summary_modq5 <- summary(modq5)

modq25 <- lm(richness ~ zq25, data = dati)
summary_modq25 <- summary(modq25)

modq50 <- lm(richness ~ zq50, data = dati)
summary_modq50 <- summary(modq50)

modq75 <- lm(richness ~ zq75, data = dati)
summary_modq75 <- summary(modq75)

modq95 <- lm(richness ~ zq95, data = dati)
summary_modq95 <- summary(modq95)


estrai_metriche <- function(mod, nome_modello) {
  data.frame(
    modello = nome_modello,
    coeff = round(mod$coefficients[2, "Estimate"], 3),
    std_error = round(mod$coefficients[2, "Std. Error"], 3),
    t_value = round(mod$coefficients[2, "t value"], 3),
    p_value = mod$coefficients[2, "Pr(>|t|)"],
    r2 = round(mod$r.squared, 3),
    r2_adj = round(mod$adj.r.squared, 3),
    f_statistic = round(mod$fstatistic["value"], 3)
  )
}

tabella <- rbind(
    estrai_metriche(summary_modmax,  "max"),
    estrai_metriche(summary_modmean, "mean"),
    estrai_metriche(summary_modsd,   "sd"),
    estrai_metriche(summary_modkurt, "kurt"),
    estrai_metriche(summary_modskew, "skew"),
    estrai_metriche(summary_modq5,   "q5"),
    estrai_metriche(summary_modq25,  "q25"),
    estrai_metriche(summary_modq50,  "q50"),
    estrai_metriche(summary_modq75,  "q75"),
    estrai_metriche(summary_modq95,  "q95"))

t <- read.csv("LR_tabella.csv")
t30 <- read.csv("LR_tabella30x30.csv")
