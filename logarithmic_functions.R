#y = aln(bx) or y = ae^bx
##plotting these as smooth functions
x<- seq(0,100,1) #10000 numbers, between min and max
y= exp (x)# a and b are constants
plot(x,y, type='l', main='exp')
y<- log(x)
plot(x,y, type='l', main='log')

#####2. four types of curves for power
y<- x^0.5
plot(x,y,'l', main="0<b<1") #power less than 1
y<- x
plot(x,y,'l', main="b=1") #power=1
y<- x^2
plot(x,y,'l', main="b>1") #power>1
y<- 1/x
plot(x,y,'l', main="b<1") #power>1
############
#############polynomial functions, x comes repeatedly
y1<- 5*x+0.4*x^2
plot(x,y1,'l', main="b= and <1 ") #power>1

#######3. gamma function
#######extension of t! to positive real numbers
##for integer value of t, gamma (t+1)= t!
t <- seq(0.1,5,0.01)
plot(t,gamma(t),type="l")
abline(h=3,lty=2)
