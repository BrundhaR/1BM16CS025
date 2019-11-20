library(cluster)
library(ggplot2)

data <- read.csv("C:/Users/brundha/7th Sem My Notes/DS with R/Lab/6/iris.csv")
head(data)
mydata <- data[,1:2]
mydata

#Elbow Curve
km=kmeans(mydata,4,nstart=10)
km
km$cluster
km$centers
km$withinss
km$betweenss
km$totss

#Visualizing clusters
plot(mydata[km$cluster ==1,],main="Myna_051",col="red",xlim=c(min(mydata[,1]),max(mydata[,1])),ylim=c(min(mydata[,2]),max(mydata[,2])))
points(mydata[km$cluster == 2,],col="blue")
points(mydata[km$cluster == 3,],col="green")
points(mydata[km$cluster == 4,],col="black")


