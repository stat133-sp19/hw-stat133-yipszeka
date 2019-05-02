context("Context for summary measures")

test_that("check aux_mean is valid", {

  expect_length(aux_mean(1,1),1)
  expect_gt(aux_mean(1,1),-1)
  expect_error(aux_mean(-1,2,2))
  expect_error(aux_mean(1,-2.2,1))
  expect_type(aux_mean(1,1),"double")
  expect_is(aux_mean(1,1),"numeric")
  expect_equal(aux_mean(5,1),5)

})

test_that("check aux_variance is valid", {

  expect_gt(aux_variance(1,1),-1)
  expect_error(aux_variance(1,-1,1))
  expect_error(aux_variance(-1,2,1))
  expect_type(aux_variance(1,1),"double")
  expect_equal(aux_variance(5,1),0)
  expect_is(aux_variance(1,1),"numeric")

})

test_that("check aux_mode is valid", {

  expect_error(aux_mode(-1,-1,23))
  expect_gt(aux_mode(0,0.7),-1)
  expect_error(aux_mode(-1,1,1))
  expect_error(aux_mode(1,-1,2))
  expect_equal(aux_mode(0,.7),0)
  expect_type(aux_mode(1,1),"double")
  expect_is(aux_mode(1,1),"numeric")



})

test_that("check aux_skewness is valid", {

  expect_error(aux_skewness(-1,1,1))
  expect_error(aux_skewness(1,-1,1))
  expect_equal(aux_skewness(4,.5),0)
  expect_type(aux_skewness(1,1),"double")
  expect_error(aux_skewness(-1,-1,1))
  expect_is(aux_skewness(1,1),"numeric")
  expect_lt(aux_skewness(5,1),10)
})


test_that("check aux_kurtosis is valid", {
  expect_lt(aux_skewness(5,1),10)
  expect_error(aux_kurtosis(-1,-1,12))
  expect_equal(aux_kurtosis(4,.5),-0.5)
  expect_error(aux_kurtosis(-1,1,1))
  expect_type(aux_kurtosis(1,1),"double")
  expect_is(aux_kurtosis(1,1),"numeric")
  expect_error(aux_kurtosis(1,-1,1))

})

