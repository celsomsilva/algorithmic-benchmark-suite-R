# bubble sort implementation
# performs an in-place style sort using explicit loops

bubble_sort <- function(array) {
  size <- length(array)
  #temp <- NA  
  
  if (size < 2) {
    return(array)
  }
  
  for (j in 1:(size - 1)) {
    for (i in 1:(size - 1)) {
      if (array[i] > array[i + 1]) {
        temp <- array[i]
        array[i] <- array[i + 1]
        array[i + 1] <- temp
      }
    }
  }
  
  return(array)
}

