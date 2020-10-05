read_data <- function(){
  
  df <- data.frame()
  num <<- 0
  for (i in dir(pattern = "*.csv")){
    temp_df <- read.csv(i)
    df <- rbind(temp_df,df)
    num <- num+1
  }
  print(paste(as.character(num),"files was added"))
  return(df)
} 
