# Algorithmic Benchmark Suite (R)

> Java version of this repository: [Algorithmic Benchmark Suite (Java)](https://github.com/celsomsilva/algorithmic-benchmark-suite-java)
> Rust version of this repository: [Algorithmic Benchmark Suite (Rust)](https://github.com/celsomsilva/algorithmic-benchmark-suite-rust)

A **benchmarking and reproducibility framework** for classical algorithms,
focused on explicit reasoning, correctness, and performance evaluation in R.

This repository contains modern R implementations of classical algorithms,
designed to be **testable, benchmarkable, and reproducible**.

The implementations are conceptually inspired by legacy Pascal and C code
written in the early 2000s, which is preserved separately as a historical
reference.

The idea is simple:

- study classical algorithms through explicit implementations,
- reimplement them in R without hiding logic behind helpers,
- validate correctness with automated tests,
- measure performance with reproducible benchmarks.

This project is both:

- a **technical portfolio**, demonstrating algorithmic engineering,
  test automation, and benchmarking in R,
- and a **modern engineering layer**, built on top of historical algorithmic training.

---

## Motivation

This project was inspired by a job description I encountered on LinkedIn that
emphasized **code reasoning, algorithmic benchmarking, correctness, and
performance evaluation**.

Rather than treating those requirements as an abstract checklist, I decided
to turn them into a **concrete engineering project**: a structured framework
for designing, testing, documenting, and benchmarking classical algorithms in R.

While the original motivation came from an industry role, the scope and
implementation of this repository are entirely **author-driven**, focusing on
clarity, explicit reasoning, and reproducibility rather than interview-style
solutions.

---

## What’s Inside

- A small, curated subset of **Pascal/C source files** (`selected_algorithms/`)
  used as direct conceptual references
- Explicit **R implementations** of classical algorithms
- Automated correctness tests (`testthat`)
- Performance benchmarks (`microbenchmark`)
- Reproducible reports (`RMarkdown`)

---

## Legacy Code Reference

This repository includes a minimal `selected_algorithms/` directory
containing only the legacy Pascal and C files cleaned that are directly referenced
by the R implementations.

The complete, unmodified and cleaned legacy archive is preserved separately at:

https://github.com/celsomsilva/algorithmic-legacy-code

All files in `selected_algorithms/` are included strictly for contextual
reference. No algorithmic logic was altered.

---

## Repository Layout

```
algorithmic-benchmark-suite-R/
  selected_algorithms/   # minimal legacy reference (Pascal/C)
  modern_r/
    R/
    tests/
    benchmarks/
  docs/                  # RMarkdown reports
  README.md
  .gitignore
  LICENSE
  install.R
```

---

## Getting Started

### Requirements

- R ≥ 4.0
- Optional: RStudio
- Packages: `testthat`, `microbenchmark`, `rmarkdown`

Install dependencies:

```r
Rscript install.R
```

Or manually:

```r
install.packages(c(
  "testthat",
  "microbenchmark",
  "rmarkdown"
))
```

### Running Tests

```r
library(testthat)
test_dir("modern_r/tests")
```

### Running Benchmarks

```r
source("modern_r/benchmarks/benchmark_union_find.R")
```

### Generating Reports

```r
rmarkdown::render("docs/union_find_report.Rmd")
```

> 
> 
> If you prefer, the benchmarks can also be run directly from RStudio.
> 
> 


---

## Author

This project was developed by an engineer and data scientist with a background in:

* Postgraduate degree in **Data Science and Analytics (USP)**
* Bachelor of **Science in Electrical and Computer Engineering (UERJ)**
* Special interest in statistical models, interpretability, and applied AI

---


## Contact  

- [LinkedIn](https://linkedin.com/in/celso-m-silva)  
- Or open an [issue](https://github.com/celsomsilva/algorithmic-benchmark-suite-R/issues)
