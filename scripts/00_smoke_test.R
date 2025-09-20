# scripts/00_smoke_test.R
library(dplyr); library(lme4)
set.seed(1)
df <- data.frame(y=rnorm(100), x=rnorm(100), g=factor(rep(1:10, each=10)))
fit <- lmer(y ~ x + (1|g), data=df)
print(summary(fit))
