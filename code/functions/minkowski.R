#' @title Minkowski 
#' @description calculate the minkowski distance between two points
#' @param point 1 coordinates x
#' @param point 2 coordinates y
#' @param p exponent (part of the formula)
#' @return minkowski distance between two points 

minkowski = function(x, y, p = 1) {
  if(length(x) != length(y)) {
    stop("x and y have different lengths")
  }
  if(is.numeric(p)) {
    if (p < 1) {
      stop("p cannot be less than 1")
    }
  }
  if(is.character(p) && p != "max") {
    stop("invalid character value for p")
  }
  max_val = 0
  if(p == "max"){
    for(i in  1: length(y)){
      if (abs(x[i] - y[i]) > max_val) {
        max_val = abs(x[i] - y[i])
      }
    }
    return (max_val)
  }
  sum = 0
  for(i in 1:length(y)){
    sum = sum + (abs(x[i]-y[i]))^p
  }
  dis = sum^(1/p)
  return (dis)
}