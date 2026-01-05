install.packages("caret")
install.packages("ggplot2")
library(ggplot2)
library(caret)
data<-data.frame(
  sqft=c(1500,2000,2500,3000),
  cost=c(150000,200000,250000,300000),
  bedrooms=c(1,2,3,4),
  bathrooms=c(2,4,5,6)
)
print("Original Data:")
print(data)
data_numeric<-data[,sapply(data,is.numeric)]
data_scaled<-scale(data_numeric)
pca_result<-prcomp(data_scaled,center=TRUE,scale.=TRUE)
print("summary of the model:")
print(summary(pca_result))
print("Principal components:")
print(pca_result$resolution)
print("pca scores:")
print(pca_result$x)

screeplot(pca_result,main="Scree Plot")
biplot(pca_result,main="PCA Biplot")