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
