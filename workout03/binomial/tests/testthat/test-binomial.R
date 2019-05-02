context("Context for binomial")

test_that("check bio_choose fails to work for valid vector", {

  expect_error( bin_choose(1,2))
  expect_error( bin_choose(2,-3,1))
  expect_error( bin_choose(-2,1,2,2))
  expect_length(bin_choose(1,1),1)
  expect_equal(bin_choose(1,1),1)
  expect_identical(bin_choose(2,0),1)
  expect_type(bin_choose(1,1),"double")

  })


test_that("check bio_probability fails to work for valid vector", {

  expect_error( bin_probability(-2,2))
  expect_error( bin_probability(2,-3))
  expect_error( bin_probability(-2,1))
  expect_equal(bin_probability(2, 5, 0.5), 0.3125)
  expect_length(bin_probability(2, 5, 0.5), 1)
  expect_identical(bin_probability(3,3,1),1)
  expect_type(bin_probability(2,5,0.5),"double")
})

test_that("check bio_distribution fails to work for valid vector", {

  expect_error( bin_distribution(1,2))
  expect_length(bin_distribution(2,1),2)
  expect_error( bin_distribution(2,-3))
  expect_error( bin_distribution(-2,1))
  expect_type(bin_distribution(1,1),"list")
  expect_length(bin_distribution(1,1),2)

})



test_that("check bio_cumulative fails to work for valid vector", {

  expect_error( bin_cumulative(1,2))
  expect_length(bin_cumulative(1,1),3)
  expect_error( bin_cumulative(2,-3))
  expect_error( bin_cumulative(-2,1))
  expect_type(bin_cumulative(5,0.5),"list")
  expect_length(bin_cumulative(5,0.5),3)

})

