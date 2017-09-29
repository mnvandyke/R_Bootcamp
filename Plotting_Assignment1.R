## Plotting and genetic variation data analysis exercises, Assignment 1

##1

get_heights <- function(x) {
  heights <- rnorm(x, mean=69, sd=10)
return(heights)
}

##2
get_heights <- function(x) {
  heights <- rnorm(x, mean=69, sd=10)
  mean(heights)
  return(heights)
}

##3
get_heights <- function(x) {
  heights <- rnorm(x, mean=69, sd=10)
  return(mean(heights))
}

##4
mean_heights_100 <- numeric(1000)
for (ii in 1:1000) {
  mean_heights_100[ii] <- get_heights(100)
}

##5
mean_heights_1000 <- numeric(1000)
for (ii in 1:1000) {
  mean_heights_1000[ii] <- get_heights(1000)
}

## 6

#plot both histograms seperately to decide where the breaks should be
hist(mean_heights_100)
hist(mean_heights_1000)

# create vector for breaks
bins<-seq(65,73, by=0.5)
counts_mean_heights_100<-hist(mean_heights_100, breaks = bins)$counts
counts_mean_heights_1000<-hist(mean_heights_1000, breaks = bins)$counts

#set plotting area
par(mfrow=c(1,1), mar=c(4,4,3,2))

barplot(rbind(counts_mean_heights_100, counts_mean_heights_1000), col= c(2,4), beside=T, xlab = "Average Height (inches)", ylab = "Count", names.arg = bins[1:16]+.25)
legend(5, 350, c("n=100", "n=1000"), lwd = 4, col = c(2,4), cex = .5)

