####Question 5
#### Function that execute Gradient descent algorithm

batdataset<- read.csv("batdataset.csv")


Z_gradient = function(file,x){
  y = subset(batdataset,select = c("EndTermMarks"))
  y_mean = mean(as.numeric(unlist(y)))
  mse = sum((y-y_mean)^2)/nrow(y)
  
  for (i in 1:100){
    x_feature = as.numeric(x)
    gradient  = runif(1,-1,1)
    intercept = runif(1,-1,1)
    y_predict = gradient*x_feature + intercept
    mse_updated = sum((y - y_predict)^2)/nrow(y)
    
    
    if (mse_updated < mse){
      
      
      print(paste(i,'-',gradient,'-',intercept,'-',mse_updated))
    }
    else {
      print(paste(i,'-',gradient,'-',intercept,'-',mse))
      
    }
    
  }
  
}
Z_gradient('batdataset.csv',90)
