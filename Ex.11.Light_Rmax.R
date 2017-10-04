#Scripts and Data Files

# 11.0.0.0.1

X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
# using '#' as a comment character allows us the CSV file to be self-documenting

par(cex=1.5,cex.main=0.9)
plot(rmax~log(light),data=X,xlab="log light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot 

title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~log(Light))
summary(fit); abline(fit) 

# Next we get the regression equation to 'display itself' on the graph
c1 <- round(fit$coef[1],digits=3) 	# intercept	
c2 <- round(fit$coef[2],digits=3) 	# slope
text(3.75,3.5,paste("rmax=",c1,"+",c2,"log(light)")) 

# 11.0.0.0.3
X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
plot(rmax~light, data = X, xlim=c(0,120), ylim=c(1,4), xlab = "light intensity (uE/m2/s)", ylab = "maximum growth rate (1/d)")

# 11.0.0.0.4

X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
# using '#' as a comment character allows us the CSV file to be self-documenting

par(mfcol= c(1,2))

par(cex=1.5,cex.main=0.9)
plot(rmax~light,data=X,xlab="light intensity (uE/m2/s)",ylab="rmax (1/d)",pch=16) 
# xlab and ylab are x and y axis labels, pch is "plotting character"
# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%
# cex.main sets the character expansion for the main title of the plot 

title(main="Data from Fussmann et al. (2000) system")
fit <- lm(rmax~Light)
summary(fit); abline(fit) 

# Next we get the regression equation to 'display itself' on the graph
c1 <- round(fit$coef[1],digits=3) 	# intercept	
c2 <- round(fit$coef[2],digits=3) 	# slope
text(50,3,paste("rmax=",c1,"+",c2,"light")) 

plot(log(rmax)~log(light),data=X,xlab="log light intensity (uE/m2/s)",ylab="log rmax (1/d)",pch=16)


#11.0.0.0.5
x <- c(3:8)
y <- c(5*x+3)
par(mfrow=c(2,2), mar = c(.2,.2,.2,.2))
plot(x,y,lty="4",xlim = c(3,8), ylim=c(15,45))
plot(x,y,lty="1",col = "blue", xlim = c(3,8), ylim=c(15,45))
plot(x,y,lty = "2", col = "red", xlim = c(3,8), ylim=c(15,45))
plot(x,y,lty="3",col = "green", xlim = c(3,8), ylim=c(15,45))


# 12 Looping in R

#Beverton-Holt Map for loop
a <- 1.1
b <- 0.001
T <- seq(from=1,to=1,by=1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}

plot(T, N)

#Alternative way
aa <- 1.1
bb <- 0.001
nn <- 2
TT <- seq(from=0,to = 0,by=0)

NN <- numeric(length(TT))
for (tt in 1:length(TT)) {
  nn <- aa*nn/(1+bb*nn)
  NN[tt] <- nn
  plot(TT, NN)
}

#12.2.0.0.1
phi <- 20
conv <- FALSE
while (!conv) {
  phi.new <- 1+1/phi
  conv <- phi==phi.new
  phi <- phi.new
}
# It takes 16 iterations

