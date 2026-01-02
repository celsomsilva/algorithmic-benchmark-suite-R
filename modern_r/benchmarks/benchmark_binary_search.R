library(microbenchmark)
source("../R/binary_search.R")

set.seed(42)

array <- sort(sample(1:1000000, 100000))
target <- array[50000]

microbenchmark(
  binary_search_custom = binary_search(array, target),
  base_match = match(target, array),
  times = 100
)


