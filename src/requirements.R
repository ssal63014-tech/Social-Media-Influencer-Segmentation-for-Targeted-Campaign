required_packages <- c(
  "tidyverse",
  "dplyr",
  "cluster",
  "caret",
  "rpart",
  "pheatmap",
  "ggplot2",
  "factoextra",
  "rpart.plot"
)

# Install missing packages only
installed <- rownames(installed.packages())

for (pkg in required_packages) {
  if (!(pkg %in% installed)) {
    install.packages(pkg)
  }
}

lapply(required_packages, library, character.only = TRUE)