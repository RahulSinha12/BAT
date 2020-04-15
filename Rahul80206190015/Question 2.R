####Question 2
#### Create funtion to calculate Z_Score to convert the numeric Columns

batdataset<- read.csv("C:/Users/KUNAL/Desktop/BAT/batdataset.csv")

z_score = function(X) {
  M = (X-z_Mean(X))/z_std(X); M
}
j<-batdataset$Attendance
a<-batdataset$EndTermMarks
z_score(j)
z_score(a)
