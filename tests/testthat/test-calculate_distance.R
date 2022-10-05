test_that("test that input length is same as output length", {
  XStart <- 7.5
  PathLength <- calculate_distance(7.5, 7.8, 80.1, 80.2)
  expect_equal(length(XStart), length(PathLength))
})

test_that("test that output is not empty", {
  PathLength <- calculate_distance(7.5, 7.8, 80.1, 80.2)
  expect_false(is.null(PathLength))
})
