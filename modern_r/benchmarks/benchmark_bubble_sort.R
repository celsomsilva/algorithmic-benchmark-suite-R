library(microbenchmark)
source("../R/bubble_sort.R")

set.seed(42)

array <- sample(1:1000, 100)
array_sorted <- array

microbenchmark(
  bubble_sort_custom = bubble_sort(array),
  base_sort = sort(array_sorted),
  times = 50
)



