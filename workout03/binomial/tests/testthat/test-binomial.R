context("Context for binomial")

test_that("check bio_choose fails to work for valid vector", {

  expect_error( bin_choose(1,2))
  expect_error( bin_choose(2,-3,1))
  expect_error( bin_choose(-2,1,2,2))


})


test_that("check bio_probability fails to work for valid vector", {

  expect_error( bin_probability(-2,2))
  expect_error( bin_probability(2,-3))
  expect_error( bin_probability(-2,1))


})

test_that("check bio_distribution fails to work for valid vector", {

  expect_error( bin_distribution(1,2))
  expect_error( bin_distribution(2,-3))
  expect_error( bin_distribution(-2,1))


})



test_that("check bio_cumulative fails to work for valid vector", {

  expect_error( bin_cumulative(1,2))
  expect_error( bin_cumulative(2,-3))
  expect_error( bin_cumulative(-2,1))


})

