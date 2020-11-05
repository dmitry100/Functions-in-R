###Функция кластеризации df

smart_hclust<-  function(test_data, cluster_number){
  dist_matrix <-  dist(test_data)
  fit <- hclust(dist_matrix)
  test_data$cluster <- as.factor(cutree(fit,cluster_number))
  return(test_data)
}
