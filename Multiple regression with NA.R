#на вход данные с тремя переменными,зависимая переменная содержит пустые значения, новая перемнная заполняет пустые значения предсказанными

fill_na <- function(x){
  fit <- lm(x[,3]~x[,1]+x[,2],data=x,na.action = "na.exclude")
  x$y_full <- ifelse(is.na(x[,3]),predict(fit,x),x[,3])
  return(x)
}