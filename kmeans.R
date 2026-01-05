if(!require(ggplot2)){
  install.packages("ggplot2")
}
library(ggplot2)
library(datasets)
data(iris)
iris_dataset<-iris[,1:4]
set.seed(123)
kmeans_result<-kmeans(iris_dataset,centers=3,nstart=20)
print(kmeans_result)
iris$Cluster<-as.factor(kmeans_result$cluster)
print(iris)
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,color=Cluster))+
  geom_point(size=3)+
  labs(title="kmeans clustering of iris dataset",x="sepal length",y="Sepal Width")+
  theme_minimal()

ggplot(iris,aes(x=Petal.Length,y=Petal.Width,color=Cluster))+
  geom_point(size=3)+
  labs(title = "kmeans clustering of iris dataset",x="Petal Length",y="Petal width")+
  theme_minimal()