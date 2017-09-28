## Modeling Exercise

RickerFun <- function(N0, rr, KK, ttmax, figure = TRUE) {
  NN <- matrix(NA, nrow=1, ncol=(ttmax +1)) ## creating empty matrix
  NN[1] <- N0 ## initializing matrix
  for (tt in 1:ttmax){
    NN[tt+1] <- NN[tt]*exp(rr*(1-(NN[tt]/KK)))
  }
  if (figure == TRUE){
  plot(1:(ttmax+1), NN, type = "b", xlab = "time", ylab = "N", col = 'blue')
  }
    return(NN)
}

# (b)
# population decreases to n=0, make rr(-)
RickerFun(100, -1, 600, 200)
# population approaches stable equillibrium at n* = K, w/out oscillations, make 0<rr<1
RickerFun(100, 0.25, 600, 100)
# Decaying oscillations around n* = K, make r about 1.5 < rr < 2.5
RickerFun(100, 1.9, 600, 50)
# Persistent, regular oscillations, make rr = 2.5
RickerFun(100, 2.5, 600, 1000)
# Crazy, random-looking fluctuations, chaos, make rr>3
RickerFun(100, 4, 600, 100)

##rr is the key!

# (c)

par(mfrow = c(3,2), mar = c(4,4,3,2))

RickerFun(100, -1, 600, 50)
RickerFun(100, 0.25, 600, 50)
RickerFun(100, 1.9, 600, 50)
RickerFun(100, 2.5, 600, 50)
RickerFun(100, 4, 600, 50)
RickerFun(100, -1.5, 600, 50)


# (d)
KK.input<-1000
nVec <- RickerFun(20, 0.5, KK.input, 50)
which(nVec>=KK.input/2)[1]

# (e)
par(mfrow = c(1,1), mar = c(4,4,3,2))
# make rr a vector - a list of possible parameters
rrVector<- seq(0.1, 0.9, by =0.1)
#create vector for which(nVec) outputs
tKhalf <- matrix(NA, nrow = 1, ncol = length(rrVector))

for (aa in 1:length(rrVector)) {
  KK.input<-1000
  nVec <- RickerFun(20, rrVector[aa], KK.input, 50, figure = FALSE)
  tKhalf[aa] <- which(nVec>=KK.input/2)[1]
   plot(rrVector, tKhalf, xlab = "Growth Rate", ylab = "Kt/2")
}

# (f)(g)

par(mfrow = c(1,1), mar = c(4,4,3,2))
# make rr a vector - a list of possible parameters
rrVector<- seq(0.1, 0.9, by =0.1)
#make Kvector
Kvector<- seq(1000, 5000, by=500)
#create matrix for all possible values of K and rr
KrrMatrix <- matrix(NA, nrow =length(rrVector), ncol = length(Kvector))
#Set a time to collect
tcollect <- 10

#create a nested for loop to get every value of rr with every value of K at a certain time
for (aa in 1:length(rrVector)) {
  for(ii in 1:length(Kvector)) {
  output <- RickerFun(20, rrVector[aa], Kvector[ii], 100, figure = FALSE)
  KrrMatrix[aa,ii] <- output[tcollect]
  }
  print(KrrMatrix)
}
  # create figure
  contour(rrVector, Kvector, KrrMatrix)
  title(main = "Population at t = 10 with varying r and K", xlab = "r", ylab = "K")
