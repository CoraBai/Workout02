#' @title Is Hex
#' @description test if the input string is a hex color without alpha transparency
#' @param string x
#' @return logical value of if the input is a hex color without alpha transparency
is_hex = function(x){
  if(!(is.character(x) && length(x) ==1)){
    stop("invalid input; a string was expected")
  }
  else{
  return(grepl("^#(\\d|[a-f]){6}$", x, ignore.case = TRUE))
  }
}

#' @title Is Hex Alpha
#' @description test if the input string is a hex color with alpha transparency
#' @param string x
#' @return logical value of if the input is a hex color with alpha transparency
is_hex_alpha = function(x){
  if(!(is.character(x) && length(x) ==1)){
    stop("invalid input; a string was expected")
  }
  else{
    return(grepl("^#(\\d|[a-f]){8}$", x, ignore.case = TRUE))
  }
}