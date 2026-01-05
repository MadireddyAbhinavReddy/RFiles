library(ggplot2)

data<-data.frame(
  X=c(1,2,3,4,5),
  Y=c(1,3,5,7,9)
)
print("original data")
print(data)

model<-lm(Y~X,data=data)
print("model summary")
print(summary(model))

data$PredictedY<-predict(model,newdata=data)

print("data with predicted values")
print(data)

ggplot(data,aes(x=X,y=Y))+
  geom_point()+
  geom_smooth(method = "lm",se=FALSE,color="blue")+
  labs(title="linear Rgegression",x="X",y="Y")+
  theme_minimal()