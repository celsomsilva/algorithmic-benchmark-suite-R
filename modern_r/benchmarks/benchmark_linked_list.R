library(microbenchmark)
source("../R/linked_list.R")

set.seed(42)

n <- 1000

microbenchmark(
  linked_list_insert = {
    ll <- linked_list_init(n)
    for (i in 1:n) {
      ll <- linked_list_insert_front(ll, i)
    }
  },
  vector_prepend = {
    v <- integer(0)
    for (i in 1:n) {
      v <- c(i, v)
    }
  },
  times = 50
)

