context("Context for checkers")

 test_that("check_prob works for probability vectors", {

  expect_true(check_prob(0.2))
  expect_true(check_prob(c(1)))
  expect_error(check_prob(c(0.1,0.2)))
  expect_is(check_prob(1),"logical")
  expect_error(check_prob(11))
  expect_type(check_prob(1),"logical")
  expect_length(check_prob(1),1)
  })

  test_that("check_trials works for trials vectors", {

    expect_true(check_trials(1))
    expect_type(check_trials(1),"logical")
    expect_true(check_trials(2))
    expect_error(check_trials(-3))
    expect_true(check_trials(3))
    expect_true(check_trials(4))
    expect_is(check_trials(2),"logical")
    expect_length(check_trials(1),1)
  })

    test_that("check_success works for succuess vectors", {

      expect_is(check_success(1),"logical")
      expect_true(check_success(1))
      expect_error(check_success(c('one')))
      expect_type(check_success(1),"logical")
      expect_error(check_success(-1))
      expect_length(check_success(1),1)

    })




