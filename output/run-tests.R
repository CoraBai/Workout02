
##################################################
## Title: Run Test
## Description: run all tests in the functions folder
## Input: code/functions
## Output: test-output.txt
##################################################library('testthat')
functions <- dir('../code/functions')
lapply(paste0('../code/functions/', functions), source)
sink(file = 'test-output.txt')
test_dir('../code/tests')
sink()