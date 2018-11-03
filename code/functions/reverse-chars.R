reverse_chars = function(x){
  if(is.character(x) && length(x) ==1){
    return(paste(rev(strsplit(x, NULL)[[1]]), collapse = ""))
  }
}