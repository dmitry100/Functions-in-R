#подсчет количества пустых значений
NA.counter <- function(x){
  a <- length(c(which(T==is.na(x))))
  print(a)
}