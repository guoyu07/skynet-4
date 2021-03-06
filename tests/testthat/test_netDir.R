library(skynet)

context("Create Directed Network")



test_that("netDir works", {
  # Run simple net test
  test <- make.netDir(OD_Sample)
  expect_output(str(test), "List of 3")
  expect_output(str(nrow(test$netDir)), "2182")
})

test_that("make.netDir with disp", {
  # Run simple net test
  test <- make.netDir(OD_Sample, disp = TRUE)
  expect_output(str(nrow(test$netDir_disp)), "33")
  expect_length(test$gDir_disp, 10)
  expect_length(test$nodes, 13)
  expect_output(str(class(test$netDir_disp)), "data.frame")
  expect_output(str(class(test$nodes)), "data.frame")
  expect_output(str(class(test$gDir_disp)), "igraph")
})

test_that("make.netDir with cap", {
  # Run simple net test
  test <- make.netDir(OD_Sample, cap = TRUE)
  expect_output(str(nrow(test$netDir_cap)), "205")
  expect_length(test$gDir_cap, 10)
  expect_length(test$nodes, 13)
  expect_output(str(class(test$netDir_cap)), "data.frame")
  expect_output(str(class(test$nodes)), "data.frame")
  expect_output(str(class(test$gDir_cap)), "igraph")
})

test_that("make.netDir with metro", {
  # Run simple net test
  test <- make.netDir(OD_Sample, metro = TRUE)
  expect_output(str(nrow(test$netDir)), "1781")
  expect_length(test$gDir, 10)
  expect_length(test$nodes, 8)
  expect_output(str(class(test$netDir)), "data.frame")
  expect_output(str(class(test$nodes)), "data.frame")
  expect_output(str(class(test$gDir)), "igraph")
})
