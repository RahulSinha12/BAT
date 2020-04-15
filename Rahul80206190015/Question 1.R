####Question 1:
#### Compute the MEAN and STD for Numeric column
batdataset<- read.csv("C:/Users/KUNAL/Desktop/BAT/batdataset.csv")

# Customized funtion for Mean
z_Mean = function(X) {
  M = sum(X)/length(X); M
}
j<-batdataset$Attendance
e<-batdataset$EndTermMarks
z_Mean(j)
z_Mean(e)

# Customized funtion for STD
z_std = function(X) {
  M = sqrt(sum(X-z_Mean(X))^2/length(X)); M
}
j<-batdataset$Attendance
e<-batdataset$EndTermMarks
z_std(j)
z_std(e)


