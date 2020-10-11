#функция линейной регрессии с 2 количественными переменными

regr.calc <- function(df){
  corr <- cor.test(df[[1]],df[[2]])
  if(corr$p.value<0.05){
    lm <- lm(df[[1]]~df[[2]],df)
    df$fit <- lm$fitted.values
    return(df)
  } else{
    return( "There is no sense in prediction")
    
  }
}