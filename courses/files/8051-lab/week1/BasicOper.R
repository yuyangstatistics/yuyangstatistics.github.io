#Some basic operations in R
#1. Simple algebraic manipulations
1+2
2*3/5
log(2.71828) #default is base e
2^3
2**3   # ** is the same as ^
a<-exp(0.1)   # <- is the same as =
a
a=exp(0.1)
a
b<-sin(1.2)
a*b

#2. vector and matrix
a<-seq(0,1,0.1)
a
?seq #same as help(seq)
length(a)
a<-c(1,2,3) # a is a column vector
a
a*2
a+1
a**2
sqrt(a)

d<- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol=3, byrow=TRUE)
d
d<- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol=3) #it's by column by default
d
a<-c(1,2,3) # 3x1 matrix
d%*%a    # %*% does matrix multiplication
t(a)%*%t(d)  # t(a) is the transpose of a, same as t(d%*%a)
a%*%t(a)
t(a)%*%a    # note the difference
b<-a[c(1,3)] #gets the 1st & 3rd number in a
b
b<-a[-2] #deletes the 2nd number in a
b
d[1,] #takes first row
d[,1] #takes first col

#3. Simple plots
a<-seq(0,1,0.1)
b<-a^2
par(mfrow=c(1,2))
plot(a,b,type="p") #points
plot(a,b,type="l") #line

#####lines appear on the same plot 
lines(a,a^3,lty=1) #use lines() instead of plot() otherwise it'll create a new plot
lines(a,a^4,lty=2)

par(mfrow=c(1,1))
