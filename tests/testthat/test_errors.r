context("Test Errors")

test_that('error for multiple keywords ignore case', {
  path <- system.file('pdf', '1610.00147.pdf', package = 'pdfsearch')
  expect_error(keyword_search(x = path, 
                  keyword = c('measurement error', 'package', ' R '), 
                  path = TRUE,
                  ignore.case = c(TRUE, FALSE)))
})