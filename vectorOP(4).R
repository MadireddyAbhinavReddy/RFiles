meanc<-function(x){
  ux<-unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
arr<-as.numeric(unlist(strsplit(readline()," ")))
print(arr)
cat("mean:",mean(arr))
cat("median",median(arr))
cat("mode",meanc(arr))
cat("standard deviation:",sd(arr))
