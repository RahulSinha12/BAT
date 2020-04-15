batdataset<- read.csv("batdataset.csv")

z_split= function(file){
  Z_male = subset(batdataset,Gender=='M')
  Z_female = subset(batdataset,Gender == 'F')
  Z_maleFirst70 = head(Z_male[order(Z_male['Gender'],decreasing=T),],.70*nrow(Z_male))
  Z_femaleFirst70 = head(Z_female[order(Z_female['Gender'],decreasing=T),],.70*nrow(Z_female))
  Z_Train_data = rbind(Z_maleFirst70,Z_femaleFirst70) 
  print(Z_Train_data)
  Z_Test_data = batdataset[ !(batdataset$Name %in% Z_Train_data$Name), ]
  print(Z_Test_data)
  
}

z_split(batdataset)


