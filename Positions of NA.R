#функция показывает позиции пропущенных значений

my_funct<- function(x){
  a <- c(which(T==is.na(x)))
  return(a)  
}