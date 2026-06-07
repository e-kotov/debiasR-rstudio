# install.R script for debiasR-playground

# 1. Install pak for dependency management
if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak")
}

# 2. Install core dependencies from CRAN
# These are baked into the Docker image to keep session startup fast.
pak::pkg_install(c(
  "tidyverse",
  "sf",
  "tmap",
  "viridis",
  "ggthemes",
  "spData",
  "gstat",
  "lubridate",
  "broom",
  "scales",
  "spdep",
  "spatialreg",
  "devtools",
  "remotes",
  "quarto"
))

# 3. Install GitHub dependencies (including data package)
# These are also baked into the image.
pak::pkg_install(c(
  "e-kotov/mapgl@flowmap", # mapgl with flows visualization function add_flowmap()
  "de-bias/debiasRdata" # debiasR data package
))

# Note: debiasR (core) source is handled at runtime by the 'start' script
# so its vignettes and devtools-loaded code are always the latest.
