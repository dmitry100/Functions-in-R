######Проверка на мультиколлинеарность. Функция выводит два коэффициента максимально коррелирующих между собой

high.corr <- function(x){
  cor_mat <- cor(x) #выводи матрицу коэффициентов корреляции
  diag(cor_mat) <- 0 #присваиваем диагонали матрицы значение 0, чтобы избавиться от 1
  return(rownames(which(abs(cor_mat)==max(abs(cor_mat)),arr.ind = T))) #вывод строк с максимальным значением корреляции(по модулю,т.к. учитываем отрицательные значения корреляции)
}