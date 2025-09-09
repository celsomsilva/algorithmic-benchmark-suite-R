![R](https://img.shields.io/badge/R-4.4.0-blue?logo=r)
![C](https://img.shields.io/badge/C-99-blue?logo=c)
![Pascal](https://img.shields.io/badge/Pascal-Delphi-orange?logo=delphi)
![License](https://img.shields.io/github/license/celsomsilva/discord-cam-kick-bot)
![Contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)


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
│── legacy_pascal/      # Pascal (1th-5th-7th semester, UERJ university) – lists, trees, graphs
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

## About the Author

My background in R goes beyond algorithmic exercises.  
During my MSc in Data Science and Analytics (São Paulo University - USP), I worked extensively with **advanced statistical modeling**, including:

- **Hierarchical nonlinear mixed models (HLM3)**
- **Box-Cox and Johnson transformations**
- **Intraclass correlation (ICC) analysis**
- **Full residual diagnostics and model validation**

This project is not about statistics per se, but about **bridging that expertise with classical algorithmic benchmarks**.  
In other words, if I can fit a nonlinear mixed-effects model with transformations in R, then implementing and benchmarking algorithms like **Union-Find, Dijkstra, or Segment Trees** is a natural and exciting extension.


## Roadmap
- [x] Port classical algorithms from Pascal/C to R
- [x] Implement Union-Find with tests and benchmarks
- [ ] Add Dijkstra with tests and benchmarks
- [ ] Implement DP algorithms (e.g., Knapsack, LCS)
- [ ] Add String Processing (KMP, Rolling Hash)
- [ ] Add Number Theory (Primes, Modular Arithmetic)
- [ ] Expand reports with comparative analysis
