# function to perform binary search
# This version follows the same reasoning used in the original
# Pascal and C implementations: explicit indices, explicit loop,
# and integer arithmetic instead of abstractions.
# integer division replaces division by 2

binary_search <- function(array, target) {
  start <- 1
  end <- length(array)
  mid <- NA_integer_

  while (start <= end) {
    # integer division instead of / 2
    mid <- (start + end) %/% 2

    if (array[mid] == target) {
      return(mid)
    }

    if (array[mid] < target) {
      start <- mid + 1
    } else {
      end <- mid - 1
    }
  }

  return(NA_integer_)
}


