## Plotting and genetic variation analysis exercises, Assignment 2

#set wd
setwd("~/Documents/R_Bootcamp")

# Load a data set
snpsDataFrame=read.table('hapmaps.txt',header=TRUE)

#1.
#(a)
compute_chisquare_2=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  #here we use the built-in function for the chi-sq distribution:
  exp_probs=c((1-freq)^2,2*freq*(1-freq),freq^2) #note, here we don't multiply by n
  chisq<-chisq.test(obscnts,p=exp_probs, correct = FALSE)$statistic
  return(chisq)
}

# Apply the compute_chi_square function to each snp
chisqs2=apply(snps,1,compute_chisquare_2)

#(b)

# Compute p-values for each chi-square value using the pchisq function
pvals=pchisq(chisqs,1,lower.tail=FALSE)

#Proportion of p-values < 0.05
sum(pvals<.05)/length(pvals)
#0.04509218
#Proportion of p-values < 0.01
sum(pvals<.01)/length(pvals)
#0.01021425
#Proportion of p-values < 0.001
sum(pvals<.001)/length(pvals)
#0.00124564
# yes 5 p-values are less than 0.001

# (c) find number of p-values
num_pval <-length(pvals)
#4014

# (d) create vector of expected p-values
exp_pvals <- seq(1/4014, 1, by = 1/4014)

# (e) sort p-values from smallest to largest
sort_pvals <- sort(pvals)

#(f)
log_exp_pvals <- (-log10(exp_pvals))
log_sort_pvals <- (-log10(sort_pvals))

# (g) Plot observed pvals vs expected pvals
plot(log_exp_pvals, log_sort_pvals, ylab = "-log10(Observed P-values)", xlab = "-log10(Expected P-values)")

# (h) Add a diagonal line
p=seq(0,4,by=.25) 
lines(p,p, lty = 2, lwd = 3, col=2)


## 2

# (a) Load a data set
zz <- read.table('phenotypes.txt',header=TRUE)

# (b)
# create a vector/matrix with only the glucose values
glucose<- as.matrix(zz[,2])
# Find level at which 25% of the individuals have a phenotype LESS than this value
quantile(glucose, .25)
# 4.768756

#(c) Find the value of the phenotype such that 25% of the individuals have a phenotype GREATER than this value 
quantile(glucose, .75)
# 7.354975 

# (d) Create Density plot of distribution of phenotypes
plot(density(glucose), col = 1, lwd = 4, ylab = "Blood Glucose Levels (mmol/L)", xlab = "Number of Individuals", main = "Density Plot of the Distribution of Phenotypes")

# Add vertical lines to denote 25% and 75% tails of distribution
abline(v=quantile(glucose, 0.25),lty=2,lwd=3,col=2)
abline(v=quantile(glucose, 0.75),lty=2,lwd=3,col=4)

# Add legend
legend(8,0.3,c("25% tail","75% tail"),lwd=4,col=c(2,4),cex=.75)

