
is_hex = function(x){
  if(!(is.character(x) && length(x) ==1)){
    stop("invalid input; a string was expected")
  }
  else{
  return(grepl("^#(\\d|[a-f]){6}$", x, ignore.case = TRUE))
  }
}

is_hex_alpha = function(x){
  if(!(is.character(x) && length(x) ==1)){
    stop("invalid input; a string was expected")
  }
  else{
    return(grepl("^#(\\d|[a-f]){8}$", x, ignore.case = TRUE))
  }
}