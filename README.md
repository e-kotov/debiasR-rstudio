# debiasR-playground

A containerized interactive environment for the [debiasR](https://github.com/de-bias/debiasR/) and [debiasRdata](https://github.com/de-bias/debiasRdata/) R packages.

## Run on Binder

Click the button below to launch an interactive RStudio session in your browser:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/de-bias/debiasR-rstudio/HEAD?urlpath=rstudio)

**Note:** This playground automatically pulls the **latest version** of `debiasR` and `debiasRdata` from GitHub every time the environment is launched.

## Features

- **Always Up-to-Date:** Automatically clones and installs the latest source code from the main repositories.
- **Ready-to-use RStudio:** Pre-configured with all necessary spatial analysis libraries.
- **Interactive Vignettes:** Explore the latest vignettes located in the `debiasR/vignettes/` folder.
- **Live Development:** Modify the source code in the cloned folders and see changes reflected immediately using `devtools`.

## Getting Started

Once the Binder environment launches:
1. Navigate to the `debiasR/vignettes/` folder.
2. Open any `.qmd` file (e.g., `v07-validation.qmd`).
3. Run the code chunks to explore the package functionality.

## Local Usage

If you have Docker installed, you can build and run this container locally:

```bash
git clone https://github.com/de-bias/debiasR-rstudio.git
cd debiasR-rstudio
docker build -t debiasr-rstudio .
docker run --rm -p 8888:8888 debiasr-rstudio
```

## Packages Included

- **Spatial Analysis:** `sf`, `tmap`, `spdep`, `spatialreg`, `gstat`, `spData`, `mapgl` with flowmaps
- **Visualization:** `tidyverse`, `viridis`, `ggthemes`, `scales`
- **Utilities:** `lubridate`, `broom`, `devtools`
- **Core:** `debiasR`, `debiasRdata`
