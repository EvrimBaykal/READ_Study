# Sync renv: record current package state into renv.lock
suppressMessages({
  if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")
  renv::activate()
})
try({
  renv::status()
  renv::snapshot(prompt = FALSE)
}, silent = TRUE)
