#' @title Count Vowels
#' @description count the number of vowels in a given string regardless of case
#' @param string value
#' @return number of all vowels with names
library("stringr")
count_vowels = function(x){
  if(!(is.character(x) && length(x) ==1)){
    stop("invalid input; a string was expected")
  }
  else{
    x = casefold(x, upper = FALSE)
    vec = c(str_count(x, pattern = "a"), str_count(x, pattern = "e"), str_count(x, pattern = "i"), str_count(x, pattern = "o"), str_count(x, "u"))
    vec = as.double(vec)
    names(vec) = c("a","e","i","o","u")
  }
  return(vec)
}