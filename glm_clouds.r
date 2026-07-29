library(car)
library(robustbase)
library(corrplot)
library(caret)
library(MASS)
library(ggeffects)
        
df <- read.csv("C100.csv")
df <- df[sapply(df, is.numeric)]
df3 <- read.csv("C30.csv")
df3 <- df3[sapply(df3, is.numeric)]


#Matrice di Correlazione
features <- setdiff(names(df), "richness")
corr <- cor(df[, features], use = "pairwise.complete.obs", method = "spearman")

highCorr <- findCorrelation(corr, cutoff = 0.8)
df_reduced <- df[, -highCorr]


#Modello GLM 100x100m2
modello_brutto <- glm.nb(richness ~ zq50 + zskew + zkurt + 
                                    zentropy + zpcum6 + pzabove2 + zcv, 
                         data = df)

modello_glm <- glm.nb(richness ~  zskew + zkurt + zpcum6 + pzabove2, 
                      data = df)

vif(modello_glm)
summary(modello_glm)
exp(cbind(Estimate = coef(modello_glm),
          confint(modello_glm)))

AIC(modello_glm, modello_brutto)
anova(modello_brutto, modello_glm, test = "Chisq")

plot(ggpredict(modello_glm, terms = "zq50"))

#Cross-Validation
train_control <- trainControl(method = "repeatedcv",
                              number = 10, repeats = 10)

mod_cv <- train(richness ~ zskew + zkurt + zpcum6 + pzabove2,
                           data = df,
                           method = "glm.nb",
                           trControl = train_control)

mod_cv$results
mod_cv$resample


#Modello GLM 30x30m2
modello_brutto <- glm.nb(richness ~ zmean + zskew + zkurt + 
                                    zentropy +zq5 + zpcum6 + pzabove2 + zcv, 
                  data = df3)

modello_glm <- glm.nb(richness ~ zskew + zkurt + zq5 + zpcum8, 
              data = df3)

vif(modello_glm)
summary(modello_glm)
exp(cbind(Estimate = coef(modello_glm),
          confint(modello_glm)))


AIC(modello_glm, modello_brutto)
anova(modello_brutto, modello_glm, test = "Chisq")


#Cross-Validation
train_control <- trainControl(method = "repeatedcv",
                  number = 10, repeats = 10)

mod_cv <- train(richness ~ zskew + zkurt + zq5 + zpcum8,
                data = df3,
                method = "glm.nb",
                trControl = train_control)

mod_cv$results
