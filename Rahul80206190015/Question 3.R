#### Question 3
#### Creating the funtion of Hot encoding to encode Gender

batdataset<- read.csv("C:/Users/KUNAL/Desktop/BAT/batdataset.csv")

z_hot_encoding = function(file){
  
  batdataset['Z_Dummy_Gender'] = as.integer(batdataset["Gender"] =='F')                                     # Females to 1 and Males to 0 and assigned it to a new attribute.
  print(batdataset)
}
#G<-batdataset$Gender
z_hot_encoding(batdataset)
  