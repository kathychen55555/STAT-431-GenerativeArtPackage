test_that("case1 generate_random_shape", {
  expect_error(generate_random_shape(num_points = "yellow", num_cycles = "green"))
})

test_that("generate_random_shape returns a ggplot object", {
  my_result <- generate_random_shape(num_points = 100, num_cycles = 3)
  expect_true(inherits(my_result, "ggplot"))
})


