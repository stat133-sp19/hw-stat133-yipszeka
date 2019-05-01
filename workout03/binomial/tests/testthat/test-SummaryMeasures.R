context("Context for summary measures")

test_that("check aux_mean is valid", {

  expect_length(aux_mean(1,1),1)
  expect_gt(aux_mean(1,1),-1)
  expect_error(aux_mean(-1,2,2))
  expect_error(aux_mean(1,-2.2,1))
})

test_that("check aux_variance is valid", {

  expect_gt(aux_variance(1,1),-1)
  expect_error(aux_variance(1,-1,1))
  expect_error(aux_variance(-1,2,1))

})

test_that("check aux_mode is valid", {

  expect_error(aux_mode(-1,-1,23))
  expect_error(aux_mode(-1,1,1))
  expect_error(aux_mode(1,-1,2))

})

test_that("check aux_skewness is valid", {

  expect_error(aux_skewness(-1,-1,1))
  expect_error(aux_skewness(-1,1,1))
  expect_error(aux_skewness(1,-1,1))

})


test_that("check aux_kurtosis is valid", {

  expect_error(aux_kurtosis(-1,-1,12))
  expect_error(aux_kurtosis(-1,1,1))
  expect_error(aux_kurtosis(1,-1,1))

})

