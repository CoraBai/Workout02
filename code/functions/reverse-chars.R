#' @title Reverse Chars
#' @description reverse the chars in a given string
#' @param string x
#' @return reversed string

reverse_chars = function(x){
  if(is.character(x) && length(x) ==1){
    return(paste(rev(strsplit(x, NULL)[[1]]), collapse = ""))
  }
}