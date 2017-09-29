R-Bootcamp Exercises:

# 9.1.0.0.1: 
17%%4
[1] 1
17%/%4
[1] 4
# %% gives the remainder  when the first number is divided by the second and %/% gives the whole number of that division.

# 9.1.0.0.1:
x<- c(1,2,3,4)
y<- c(2, 4, 6, 8, 10, 12)
x+y
[1]  3  6  9 12 11 14
Warning message:
  In x + y : longer object length is not a multiple of shorter object length
# It will still recycle the shorter vector but warn you that they are not the same length. 

# 9.1.2.0.1:
v<-seq(1,13,4)
print(v)
[1]  1  5  9 13
seq(1,5,.2)
[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
[12] 3.2 3.4 3.6 3.8 4.0 4.2 4.4 4.6 4.8 5.0

# 9.1.2.0.2:
seq(10,2)
[1] 10  9  8  7  6  5  4  3  2

seq(10,2,-2)
[1] 10  8  6  4  2

3:1
[1] 3 2 1

#9.1.3.0.1
z<- c(1,3,5,7,9,11)
v<- z[seq(1,5,2)]
v
[1] 1 5 9
#This has extracted the 1st throught the 5th elements of the z vector by 2.

#9.1.3.0.2
w <- z[c(2, 1, 3)]; w
[1] 3 1 5

#9.1.3.0.3
z[9] <-11
z
[1]  1  3  5  7  9 11 NA NA 11

#9.1.3.0.4
x<-1:10;x
[1]  1  2  3  4  5  6  7  8  9 10
y<- (x-1)/(x+1); y
[1] 0.0000000 0.3333333 0.5000000 0.6000000 0.6666667
[6] 0.7142857 0.7500000 0.7777778 0.8000000 0.8181818
plot(x,y,type= "o")

#9.1.3.0.6
a <- c(1, .5^(1:10))
sum(a)
[1] 1.999023
1/(1-.5)
[1] 2
b <- c(1, .5^(1:50))
sum(b)
[1] 2

#9.1.5.0.1
# If you did Light <- Light[Light<50] you would not be able to use the whole sample again and would just have the low light values.

#9.1.5.0.1
a <- runif(20)
b <- a[a<mean(a)]

#9.2.1.0.1
x <- matrix(c(1,2), nrow = 2, ncol = 4)

#9.2.1.0.2
a <- rnorm(35, mean = 1, sd = 2)
b <- matrix(a, nrow = 5, ncol = 7)

#9.2.2.0.1
rbind(C,D)
[,1] [,2] [,3]
[1,]    1    4    5
[2,]    2    5    6
[3,]    3    6    7
[4,]    1    2    3
[5,]    4    5    6
cbind(C,C)
[,1] [,2] [,3] [,4] [,5] [,6]
[1,]    1    4    5    1    4    5
[2,]    2    5    6    2    5    6
[3,]    3    6    7    3    6    7

# You cannot cbind(C,D) becasue they don't have the same number of rows. 

#9.6.0.0.1
#Variable Class Types : Year=integer, Name = Factor/ character, MasFem= Numeric, MinPressure_before= integer, minpressure_updated.2014= integer, gender_MF = integer, Category = integer, alldeaths = integer, NDAM = integer, Elapsed.Yrs = integer, Source = Factor/character, ZMasFem = numeric, ZMinPressure_A = numeric, ZNDAM = numeric


