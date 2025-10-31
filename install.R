packages <- c("testthat", "microbenchmark", "ggplot2", "rmarkdown", "knitr")

for (pkg in packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
  }
}

