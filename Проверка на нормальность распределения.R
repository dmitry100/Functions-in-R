#тест на нормальность для всех количсевтенных переменных

normality.test <- function(x){
  res <- vector(length = length(x))#создаем вектор,равный количеству переменных
  
  #запускаем цикл проверки на нормальность для каждой переменной в dataframe
  for(i in 1:length(x)){
    
    res[i] <- shapiro.test(x[[i]])$p.value
    
  }
  #присваиваем имена переменных соответсвующим значениям p.value из цикла
  names(res) <- names(x)
  #получеам:под каждой переменной p.value
  res
}

#######улучшенный способ с помощью SAPPLY

normality.test  <- function(x){    
  return(sapply(x, FUN =  shapiro.test)['p.value',])
  }
