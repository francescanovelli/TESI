library(ggplot2)
library(lidR)

dati <- read.csv("metriche_30x30.csv")

mod <- lm(richness ~ zmax, data = dati)
summary_mod <- summary(mod)

r2 <- summary_mod$r.squared
p <- summary_mod$coefficients["zmax", "Pr(>|t|)"]

ggplot(dati, aes(zmax, richness)) +
  geom_point(size = 3, shape = 21, fill = "#4C78A8", color = "#4C78A8",
             stroke = 0.2, alpha = 0.7) +
  geom_smooth(method = "lm", color = "#D95F0E", fill = "#D95F0E", 
              alpha = 0.15, linewidth = 1) +
  annotate( "text", x = Inf, y = Inf,
    label = paste0( "R² = ", round(r2,3),
                    "\np = ", signif(p,3)),
    hjust = 1.5, vjust = 1.5, size = 4)+
  labs(x = "Maximum canopy height (m)",
       y = "Species richness") +
  theme_classic(base_size = 12)


#GLM ###########################
library(car)
library(robustbase)
library(corrplot)
library(caret)

df <- read.csv("metriche.csv")
df <- df[sapply(df, is.numeric)]
df3 <- read.csv("metriche30x30.csv")
df3 <- df3[sapply(df, is.numeric)]

#Matrice di Correlazione
features <- setdiff(names(df), "richness")
corr <- cor(df[, features], use = "complete.obs")

highCorr <- findCorrelation(corr, cutoff = 0.8)
df_reduced <- df[, -highCorr]


#Modello GLM
modello_brutto <- glm.nb(richness ~ zmean + zskew + zkurt
                         + zq5 + zentropy + zpcum8 + zcv, 
                         data = df)

modello_glm <- glm.nb(richness ~ zskew + zkurt + zmean, data = df)

vif(modello_glm)
summary(modello_glm)
exp(coef(modello_glm))


AIC(modello_glm, modello_brutto)
anova(modello_brutto, modello_glm, test = "Chisq")


#Cross-Validation
train_control <- trainControl(method = "cv", number = 10)

mod_cv <- train(richness ~ zskew + zkurt + zmean,
                           data = df,
                           method = "glm.nb",
                           trControl = train_control)

mod_cv$results
