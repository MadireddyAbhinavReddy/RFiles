#reading csv
data<-read.csv("/Users/apple/Downloads/Book1.csv")
print(data)

library(readr)
data<-read_csv("/Users/apple/Downloads/Book1.csv")
print(data)

library(readxl)
data<-read_excel("/Users/apple/Downloads/Book1.xlsx",sheet="sheet1")
print(data)

data<-read.table("/Users/apple/Desktop/PDC Lab/text files/text.txt",header=TRUE,sep="\t")
print(data)

library(readr)
data<-read_tsv("/Users/apple/Desktop/PDC Lab/text files/text.txt")
data <- read_tsv("file.txt", col_names = FALSE)
print(data)


#writing into csv
print(data)
write.csv(data,"/Users/apple/Downloads/Book2.csv",row.names = FALSE)

write_csv(data,"/Users/apple/Downloads/Book2.csv")

#writing into xlsx files
install.packages("writexl")
library(writexl)
write_xlsx(data,"/Users/apple/Downloads/Book2.xlsx")

write.table(data,"/Users/apple/Downloads/Book2.txt",sep="\t")
library(readr)
write_tsv(data,"/Users/apple/Downloads/Book3.txt")
