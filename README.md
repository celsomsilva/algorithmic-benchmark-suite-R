# Algorithmic Benchmark Suite (R)

A **benchmarking and reproducibility framework** for classical algorithms, built from real legacy code.

This repository gathers my original Pascal and C algorithm exercises (written in the early 2000s) and turns them into a **structured, testable, and benchmarkable workflow in R**.

The idea is simple:

- keep the **original code** exactly as it was written back then,
- clean and reorganize the parts that make sense,
- reimplement the same algorithms in R,
- run tests and benchmarks to compare correctness and performance.

This project is both:

- a **technical portfolio**, demonstrating algorithmic engineering, code cleaning, and benchmarking,
- and a **historical archive**, showing the evolution from handwritten Pascal/C code to modern, reproducible R pipelines.


---


## Motivation

This project was inspired by a job description I encountered on LinkedIn that emphasized **code reasoning, algorithmic benchmarking, correctness, and performance evaluation**.

Rather than treating those requirements as an abstract checklist, I decided to turn them into a **concrete, long-term engineering project**: a structured framework for designing, testing, documenting, and benchmarking classical algorithms across different levels of abstraction and time.

While the original motivation came from an industry role, the implementation and scope of this repository are entirely **author-driven**, focusing on reproducibility, clarity, and technical depth rather than interview-style solutions.

---

## Project Status

Still evolving — I add things whenever I revisit old code or want to benchmark something new.

---

## What’s Inside

* Original **Pascal** and **C** code (exactly as written in the early 2000s)
* Cleaned/translated versions for readability
* Modern **R implementations**
* Automated tests (`testthat`)
* Benchmarks (`microbenchmark`)
* Small RMarkdown reports

---

## A Note About the Old Code

Everything inside `legacy_pascal/raw` and `legacy_c/raw` is **pre-StackOverflow, pre-GPT, pre-Google, pre-autocomplete, pre-formatters**.

Back then the workflow was:

* books
* xerox copies
* compilers yelling at you
* indentation done manually
* comments only if the professor demanded

Some files have:

* variable names in Portuguese
* weird indentation
* multiple versions of the same algorithm (loop, recursion, `goto`…)
* minimal comments

I keep them untouched on purpose — they’re part of the story.


---

## Repository Layout

```
algorithmic-benchmark-suite-R/
  legacy_pascal/
    raw/
      algorithms/
      easy/
      misc/
    cleaned/
      algorithms/
      easy/
      misc/

  legacy_c/
    raw/
      algorithms/
      easy/
      misc/
    cleaned/
      algorithms/
      easy/
      misc/

  modern_r/
    R/
    tests/
    benchmarks/

  docs/
  README.md
  .gitignore
  LICENSE
```

---

## How the Legacy Folders Work

* **raw/** — original Pascal/C files exactly as they were
* **cleaned/** — same files with:

  * fixed indentation
  * translated names/comments
  * small readability improvements

This keeps **authenticity** and **modern clarity** side by side.

---

## Getting Started

### Requirements

* R ≥ 4.0
* Optional: RStudio
* Packages: `testthat`, `microbenchmark`, `ggplot2`, `rmarkdown`

Install everything with:

```r
Rscript install.R
```

Or install manually:

```r
install.packages(c(
  "testthat",
  "microbenchmark",
  "ggplot2",
  "rmarkdown",
  "knitr"
))
```

### Running Tests

```r
library(testthat)
test_dir("tests")
```

### Running Benchmarks

```r
source("benchmarks/benchmark_union_find.R")
```

### Generating Reports

```r
rmarkdown::render("docs/union_find_report.Rmd")
```

---

## Author

This project was developed by an engineer and data scientist with a background in:

* Postgraduate degree in **Data Science and Analytics (USP)**
* Bachelor's degree in **Computer Engineering (UERJ)**
* Special interest in statistical models, interpretability, and applied AI

---


## Contact  

- [LinkedIn](https://linkedin.com/in/celso-m-silva)  
- Or open an [issue](https://github.com/celsomsilva/algorithmic-benchmark-suite-R/issues)
