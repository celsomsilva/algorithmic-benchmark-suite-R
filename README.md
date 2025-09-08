# Algorithmic Benchmark Suite (R)


A framework for implementing and benchmarking **classical algorithms** in **R**, with a focus on:

### Key Features
- Low-level algorithmic implementations ported from original Pascal/C code
- Correctness verification with automated tests (`testthat`)
- Performance profiling (`microbenchmark`)
- Documentation and comparative analysis in RMarkdown


## Repository Structure

```
algorithmic-benchmark-suite-R/
│── legacy_pascal/      # Pascal (5th-7th semester UERJ) – lists, trees, graphs
│── legacy_c/           # C (8th semester) – pointers, sudoku, bitwise, classic algorithms
│── modern_r/           # Implementations and benchmarks in R (Union-Find, Dijkstra, etc.)
│   │── R/          	# R Code
│   │── tests/          # Automated tests
│   │── benchmarks/     # Performance benchmarks
│── docs/               # RMarkdown reports, charts, explanations
│── README.md           # History + connection to modern applications
│── .gitignore
│── LICENSE

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
- [x] Port classical algorithms from Pascal/C to R
- [x] Implement Union-Find with tests and benchmarks
- [ ] Add Dijkstra with tests and benchmarks
- [ ] Implement DP algorithms (e.g., Knapsack, LCS)
- [ ] Add String Processing (KMP, Rolling Hash)
- [ ] Add Number Theory (Primes, Modular Arithmetic)
- [ ] Expand reports with comparative analysis
