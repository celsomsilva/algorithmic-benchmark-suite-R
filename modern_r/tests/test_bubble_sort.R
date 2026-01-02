# Unit tests with testthat

library(testthat)
source("../R/bubble_sort.R") # OBS: when running from modern_r/R directory
#source("modern_r/R/bubble_sort.R") # if R Project is set at project root

test_that("bubble sort sorts correctly", {

  expect_equal(bubble_sort(integer(0)), integer(0)) #empty

  expect_equal(bubble_sort(c(1)), c(1)) # one element

  expect_equal(
    bubble_sort(c(3, 0, 5, 1, 8, 9, 2, 4)),
    c(0, 1, 2, 3, 4, 5, 8, 9)
  )

  expect_equal(
    bubble_sort(c(5, 4, 3, 2, 1)),
    c(1, 2, 3, 4, 5)
  )

  expect_equal(
    bubble_sort(c(1, 2, 3, 4)),
    c(1, 2, 3, 4)
  )

 #duplicates
  expect_equal(
    bubble_sort(c(2, 2, 1, 1)),
    c(1, 1, 2, 2)
  )
})

