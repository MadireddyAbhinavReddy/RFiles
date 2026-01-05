data<-data.frame(
  Id=1:5,
  Age=c(25,30,NA,35,NA),
  Score=c(80,NA,90,NA,95)
)
print(data)
data_no_na<-na.omit(data)
print(data_no_na)

#imputation

data_imp<-data
data_imp$Age[is.na(data_imp$Age)]<-mean(data_imp$Age,na.rm=TRUE)
print(data_imp)
data_imp$Score[is.na(data_imp$Score)]<-mean(data_imp$Score,na.rm=TRUE)
print(data_imp)


#min-max normalization
max_min_normalize<-function(x){
  return ((x-min(x,na.rm=TRUE))/(max(x,na.rm=TRUE)-min(x,na.rm = TRUE)))
}
data_normalized<-data
data_normalized$Age<-max_min_normalize(data$Age)
data_normalized$Score<-max_min_normalize(data$Score)
print(data_normalized)
