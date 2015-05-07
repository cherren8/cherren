context("returns correct value")

test_that("example gives correct signed mean", {
  expect_equal(signed.mean(c(0, -1, 2, 5), type = "pos"), 1.75)
} )
