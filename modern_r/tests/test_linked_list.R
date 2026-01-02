# Unit tests with testthat

library(testthat)
#source("../R/linked_list.R") # OBS: when running from modern_r/R directory
source("modern_r/R/linked_list.R") # if R Project is set at project root

test_that("linked list insertion and traversal works", {

  ll <- linked_list_init(10)

  expect_true(is.na(ll$head))
  expect_equal(ll$size, 0)

  ll <- linked_list_insert_front(ll, 10)
  ll <- linked_list_insert_front(ll, 20)
  ll <- linked_list_insert_front(ll, 30)

  expect_equal(ll$size, 3)
  expect_equal(linked_list_to_vector(ll), c(30, 20, 10))
})

test_that("linked list search works correctly", {

  ll <- linked_list_init(10)

  ll <- linked_list_insert_front(ll, 5)
  ll <- linked_list_insert_front(ll, 15)
  ll <- linked_list_insert_front(ll, 25)

  pos <- linked_list_search(ll, 15)
  expect_true(!is.na(pos))
  expect_equal(ll$value[pos], 15)

  expect_true(is.na(linked_list_search(ll, 99)))
})

