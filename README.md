# Algorithmic Benchmark Suite (R)


A framework for implementing and benchmarking **classical algorithms** in **R**, with a focus on:
- Correctness (testthat)
- Performance profiling (microbenchmark)
- Documentation (RMarkdown)


## Repository Structure
```
R/ # Algorithms
tests/ # Automated tests
benchmarks/ # Performance benchmarks
docs/ # RMarkdown reports
```


## Getting Started


### Requirements
- R (≥ 4.0)
- RStudio (optional)
- Packages: `testthat`, `microbenchmark`, `ggplot2`


Install dependencies:
```
install.packages(c("testthat", "microbenchmark", "ggplot2"))
```


### Running Tests
```
library(testthat)
test_dir("tests")
```


### Running Benchmarks
```
source("benchmarks/benchmark_union_find.R")
```


### Generating Reports
From RStudio or command line:
```
rmarkdown::render("docs/union_find_report.Rmd")
```


## Roadmap
- [x] Implement Union-Find with tests and benchmarks
- [ ] Add Dijkstra with benchmarks on large graphs
- [ ] Implement DP algorithms (e.g., Knapsack)
- [ ] Add String Processing (KMP, Rolling Hash)
- [ ] Expand reports with comparative analysis
