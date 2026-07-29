library(car)
library(robustbase)
library(corrplot)
library(caret)
library(MASS)

df_1m <- read.csv("P100_1.csv")
df_1m <- df_1m[sapply(df_1m, is.numeric)]

df_10m <- read.csv("P100_10.csv")
df_10m <- df_10m[sapply(df_10m, is.numeric)]


#Matrice di Correlazione 1m
features <- setdiff(names(df_1m), "richness")
corr <- cor(df_1m[, features], use = "complete.obs")

highCorr <- findCorrelation(corr, cutoff = 0.85)
df_reduced_1m <- df_1m[, -highCorr]

#Matrice di Correlazione 10m
features <- setdiff(names(df_10m), "richness")
corr <- cor(df_10m[, features], use = "complete.obs")

highCorr <- findCorrelation(corr, cutoff = 0.85)
df_reduced_10m <- df_10m[, -highCorr]

#Modello GLM 100x100m2 1m ##################################################################
modello_brutto_1m <- glm.nb(richness ~ rao_zmax + rao_zmean + zskew + zkurt + zentropy
                                     + pzabove2 + zpcum6 + zpcum8 + zcv, 
                     data = df_1m)

modello_glm_1m <- glm.nb(richness ~ rao_zmax + rao_zmean + zskew 
                                  + pzabove2 + zpcum6, 
                         data = df_1m)

vif(modello_glm_1m)
summary(modello_glm_1m)
exp(cbind(Estimate = coef(modello_glm_1m),
          confint(modello_glm_1m)))


AIC(modello_glm_1m, modello_brutto_1m)
anova(modello_brutto_1m, modello_glm_1m, test = "Chisq")


#Cross-Validation
train_control <- trainControl(method = "repeatedcv",
                              number = 10, repeats = 10)

mod_cv <- train(richness ~ rao_zmax + rao_zmean + zskew + pzabove2 + zpcum6,
                data = df_1m,
                method = "glm.nb",
                trControl = train_control)

mod_cv$results


#Modello GLM 100x100m2 10m ############################################################################################
modello_brutto_10m <- glm.nb(richness ~ rao_zmax + rao_zmean + zsd + zkurt + zentropy 
                                      + pzabovezmean + zq5 + zpcum8 + zcv, 
                      data = df_10m)

modello_glm_10m <- glm.nb(richness ~ rao_zmax + zkurt + zskew + zpcum8, data = df_10m)

vif(modello_glm_10m)
summary(modello_glm_10m)
exp(cbind(Estimate = coef(modello_glm_10m),
          confint(modello_glm_10m)))


AIC(modello_glm_10m, modello_brutto_10m)
anova(modello_brutto_10m, modello_glm_10m, test = "Chisq")


#Cross-Validation
train_control <- trainControl(method = "repeatedcv",
                              number = 10, repeats = 10)

mod_cv <- train(richness ~ zskew + zkurt,
                data = df_10m,
                method = "glm.nb",
                trControl = train_control)

mod_cv$results

############################################################################################


df3_1m <- read.csv("P30_1.csv")
df3_1m <- df3_1m[sapply(df3_1m, is.numeric)]

df3_10m <- read.csv("P30_10.csv")
df3_10m <- df3_10m[sapply(df3_10m, is.numeric)]


#Matrice di Correlazione 1m
features <- setdiff(names(df3_1m), "richness")
corr <- cor(df3_1m[, features], use = "complete.obs")

highCorr <- findCorrelation(corr, cutoff = 0.85)
df3_reduced_1m <- df3_1m[, -highCorr]

#Matrice di Correlazione 10m
features <- setdiff(names(df3_10m), "richness")
corr <- cor(df3_10m[, features], use = "complete.obs")

highCorr <- findCorrelation(corr, cutoff = 0.85)
df3_reduced_10m <- df3_10m[, -highCorr]


#Modello GLM 30x30m2 1m ####################################################################
modello_brutto_1m <- glm.nb(richness ~ zskew + zkurt + zentropy + zq75 + rao_zmean + zcv, 
                            data = df3_1m)

modello_glm_1m <- glm.nb(richness ~ zskew, data = df3_1m)

summary(modello_glm_1m)
exp(cbind(Estimate = coef(modello_glm_1m ),
          confint(modello_glm_1m )))


AIC(modello_glm_1m , modello_brutto_1m)
anova(modello_brutto_1m, modello_glm_1m , test = "Chisq")


#Cross-Validation
train_control <- trainControl(method = "repeatedcv",
                              number = 10, repeats = 10)

mod_cv <- train(richness ~ zskew,
                data = df3_1m,
                method = "glm.nb",
                trControl = train_control)

mod_cv$results

#Modello GLM 30x30m2 10m ####################################################################
modello_brutto_10m <- glm.nb(richness ~ zskew + zkurt + zentropy + pzabovezmean + pzabove2
                                      + zq5 + zpcum6 + zcv + rao_zmax + rao_zmean, 
                             data = df3_10m)

modello_glm_10m <- glm.nb(richness ~ zkurt + zskew, data = df3_10m)

vif(modello_glm_10m)
summary(modello_glm_10m)
exp(cbind(Estimate = coef(modello_glm_10m),
          confint(modello_glm_10m)))


AIC(modello_glm_10m, modello_brutto_10m)
anova(modello_brutto_10m, modello_glm_10m, test = "Chisq")


#Cross-Validation
train_control <- trainControl(method = "repeatedcv",
                              number = 10, repeats = 10)

mod_cv <- train(richness ~ zskew + zcv,
                data = df3,
                method = "glm.nb",
                trControl = train_control)

mod_cv$results
