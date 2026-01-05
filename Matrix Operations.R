n<-as.integer(readline("Enter the number of rows"))
m<-as.integer(readline("Enter the number od columns"))
print("enter elements of first matrix")
m1e<-as.numeric(unlist(strsplit(readline()," ")))
m1<-matrix(m1e,n,m,byrow=TRUE)
print("second matrix")
m2e<-as.numeric(unlist(strsplit(readline()," ")))
m2<-matrix(m2e,n,m,byrow=TRUE)
print(m2)


#addition
m_add<-m1+m2
cat("addition:")
print(m_add)

#substraction
m_sub<-m2-m1
cat("substraction")
print(m_sub)


print(m1)
print(m2)
m_mul<-m1 %*% m2
cat("multiplication")
print(m_mul)

m_inv<-solve(m1)
print("inverse of matrix-1")
print(m_inv)

m_t<-t(m1)
print("transpose of matrix 1")
print(m_t)

m_d<-m1/m2
print("division of matrix1 and matrix 2")
print(m_d)