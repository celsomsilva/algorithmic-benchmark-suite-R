![R](https://img.shields.io/badge/R-4.4.0-blue?logo=r)
![C](https://img.shields.io/badge/C-99-blue?logo=c)
![Pascal](https://img.shields.io/badge/Pascal-Delphi-orange?logo=delphi)
![License](https://img.shields.io/github/license/celsomsilva/algorithmic-benchmark-suite-R)
![Contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)



# Algorithmic Benchmark Suite (R Language)

A **benchmarking and reproducibility framework** for classical algorithms, designed to:

* Reconstruct legacy implementations (Pascal, C) into a **structured, modern workflow**.
* Provide **cleaned, tested, and benchmarked versions in R**, enabling fair comparisons.
* Preserve the **historical learning journey** of early 2000s coding exercises while upgrading them into a reproducible, extensible system.

This repository is both:

* A **technical portfolio project**, demonstrating algorithmic engineering, code cleaning, and benchmarking.
* A **historical archive**, showing the evolution from handwritten Pascal/C to modern reproducible R pipelines.


---

## Project Status

This repository is **work-in-progress**.  
Current focus:  
- Organizing and documenting legacy Pascal and C code  
- Translating variable names and comments (Portuguese → English)  
- Adding R benchmarks for Union-Find and Dijkstra  
- Preparing detailed RMarkdown reports  

Planned:  
- Possible future integration with other languages (e.g., Java, Python) to broaden benchmarking comparisons 
- More visual documentation (charts, diagrams, comparisons)  
- Polishing `docs/` for a public-facing portfolio  

---

## Key Features
- **Legacy code** preserved in original form (Pascal/C) and cleaned versions
- **Modern R implementations** for algorithms (Union-Find, Dijkstra, etc.)
- **Automated tests** with `testthat`
- **Performance profiling** with `microbenchmark`
- **Reports** and visualizations in RMarkdown

---

## Historical Note

Code in `legacy_pascal/raw` and `legacy_c/raw` was written before **2005**, in the **pre ChatGPT/StackOverflow/IDE era**.
That means: **books, xerox copies, no IDE autocomplete**.

Some files may have:

* Portuguese variable names and minimal comments
* Inconsistent indentation (no auto-formatting at the time!)
* Multiple factorial implementations (loop, recursion, with `goto`) — left untouched for authenticity

They are preserved as-is for **historical and educational purposes**.


---


## Repository Structure

```
algorithmic-benchmark-suite-R/
│── legacy_pascal/           # Pascal code
│   │── raw/                 # Untouched originals
│   │   │── algorithms/      # Core algorithms (trees, graphs, lists, etc.)
│   │   │── easy/            # Small/basic exercises
│   │   │── misc/            # Utilities or curiosities
│   │── cleaned/             # Readable/translated versions
│       │── algorithms/
│       │── easy/
│       │── misc/
│
│── legacy_c/                # C code (pointers, Sudoku, etc.)
│   │── raw/
│   │   │── algorithms/
│   │   │── easy/
│   │   │── misc/
│   │── cleaned/
│       │── algorithms/
│       │── easy/
│       │── misc/
│
│── modern_r/                # Implementations and benchmarks in R
│   │── R/                   # R code
│   │── tests/               # Automated tests
│   │── benchmarks/          # Performance benchmarks
│
│── docs/                    # RMarkdown reports, charts, explanations
│── README.md                # This file
│── .gitignore
│── LICENSE
```

---

### Legacy Code Organization


- `raw/` → untouched original files (Pascal or C) 
- `cleaned/` → same files with indentation fixes, translated variable names/comments, and minimal cleanup for readability  

This way, both the **authentic student-era code** and the **readable/modernized version** are kept side by side.


---

## Getting Started

### Requirements

* R (≥ 4.0)
* RStudio (optional)
* Packages: `testthat`, `microbenchmark`, `ggplot2`, `rmarkdown`

Install dependencies:

```
install.packages(c("testthat", "microbenchmark", "ggplot2", "rmarkdown"))
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

From RStudio or the command line:

```
rmarkdown::render("docs/union_find_report.Rmd")
```

---

## About the Author

I’m a Data Science and Analytics specialist (USP postgraduate) and Computer Engineer (UERJ) with a career spanning from **Pascal/C/Java roots** to **modern Machine Learning and AI**.

My academic and professional background includes:

* **Computation in general**
* **Machine Learning**
* **Statistical Machine Learning**
* **Deep Learning, LLMs, and Reinforcement Learning (ongoing specialization)**

This project bridges that statistical and ML expertise with **classical algorithmic benchmarks**, showing the **continuity from foundational algorithms to modern AI**.

---


## Contact  

- [LinkedIn](https://linkedin.com/in/celso-m-silva)  
- Or open an [issue](https://github.com/celsomsilva/algorithmic-benchmark-suite-R/issues)
