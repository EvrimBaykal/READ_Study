## scripts/01_setup.R
options(stringsAsFactors = FALSE, scipen = 999)
suppressPackageStartupMessages({
  library(dplyr)
  library(tidyr)
  library(ggplot2)
  library(lme4)
  library(emmeans)
})

# ggplot theme
theme_set(theme_minimal(base_size = 12))
