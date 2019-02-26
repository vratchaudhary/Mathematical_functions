#probability distributions
##plotting factorial functions in R
x<-0:5
plot(x,factorial(x),'s', main="factorial function")
##binomial coefficneients, when there are only 2 waya to arrange osmething
## e.g. 5 choose 2

#######The cumulative probability function is an S-shaped curve showing, for any value of x, 
#the probability of obtaining a sample value that is less than or equal to x.
#Here is what it looks like for the normal distribution:
curve(pnorm(x),-5,5)
arrows(-1,0,-1,pnorm(-1),col="red")
arrows(-1,pnorm(-1),-2,pnorm(-1),col="green")
pnorm(-1)
###The probability density is the slope of this curve (its derivative).
##this slope is never negative
curve(dnorm(x),-3, 3)
##############
##the area under the normal curve is ##
#if we have a sample of 100 poeple with mean weight 54 kgs and sd 4 kgs
##we want to know the probability of datapoint x will be <54 kgs
#calculate z or the number of standard deviation away from mean
#z= (y-ybar)/sd
y=52
ybar=54
sd=4
z= (y-ybar)/sd
z
##negative so area is under left tail of curve
###probability can be calucated using pnorm
(pnorm(z ))##30.86%
##so there are 30.86% chaces that individual x is <52kgs
## >63
y=63
z= (y-ybar)/sd
z
#positive to right sided curve
1-(pnorm(z ))
##1.2% chances that the indi is >63 kg
##between a range say between 51 and 63
y1=63 ##right
z1= (y1-ybar)/sd
z1
y2=51
z2= (y2-ybar)/sd ##left
z2
pnorm(z1)-pnorm(z2)
#######plot
x <- seq(-3,3,0.01)
z <- seq(z2,z1,0.01)
p <- dnorm(z)
z <- c(z,z1,z2)
p <- c(p,0,0)
plot(x,dnorm(x),type="l",xaxt="n",ylab="probability density",xlab="height")
axis(1,at=-3:3)
polygon(z,p,col="red")
#######