setwd("/Users/mnvandyke/Documents/R_Bootcamp")

##Exercise 1
for(ii in 1:9) {
  if (ii==9) {cat("*")} 
  else {cat ("\n")}}

## Exercise 2
for(ii in 1:10) {
  if (ii==10) {cat("*")} 
  else {cat ("*&")}}

## Exercise 3
dogs <- 10;
for (i in 1:5){
  dogs <- dogs + 1; 
}
11, 12, 13, 14, 15, 16

###

meatloaf <- 0; 
for (i in 5:9){
  meatloaf <- meatloaf - i + 1;
  cat(meatloaf) 
}
-4, -9, -15, -22, -30

###

bubbles <- 12;
for (i in -1:-4){
  bubbles <- i;
}
-1,-2,-3,-4

##Exercise 4
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 4 == 0) {
    cat(years[ii], "Hooray, congressional and presidential elections!", sep = '\t', fill = TRUE)
  }
   else if(years[ii] %% 2 == 0) {
    cat(years[ii], "Hooray, congressional elections!", sep = '\t', fill = TRUE)
    }
}


##Exercise 5
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
interestRate <- 0.0125;
compounded <- vector("numeric", length(bankAccounts))
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

## Exercise 6
bankAccounts <- c(10, 9.2, 5.6)
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7) #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this


for(j in 1:5) {
for (i in 1:length(bankAccounts)) {
  #step 1 modify bankAccounts so that amounts reflect income and expenses
  bankAccounts[i] <- bankAccounts[i] - house[i] - food[i] - fun[i] + income[i]
  #step 2 get calculate interest and add to accounts from step 1
  bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i] }
print (bankAccounts)}

## Exercise7
bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0); 
fun <- c(7.8, 2.1, 10.5); 

#and incomes (through TAships) of 

income <- c(21, 21, 21);
years <- c(2015:2020)

for(j in 1:length(years)) {
  for (i in 1:length(bankAccounts)) {
    if (i==2) {
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    bankAccounts[i] <- bankAccounts[i] - house[i] - food[i] - fun[i] + income[i]
    #step 2 get calculate interest and add to accounts from step 1
    bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i]   
   } 
    else  {
      if (years[j] %% 2) {
      #step 1 modify bankAccounts so that amounts reflect income and expenses
      bankAccounts[i] <- bankAccounts[i] - house[i] - food[i] - fun[i] + income[i]
      #step 2 get calculate interest and add to accounts from step 1
      bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i]  
     }
      else {
      #step 1 modify bankAccounts so that amounts reflect income and expenses
      bankAccounts[i] <- bankAccounts[i] - house[i] - food[i] - fun[i] + income[i] + 5
      #step 2 get calculated interest and add to accounts from step 1
      bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i]
      } } 
  }
print(bankAccounts)}

## Exercise 8

value <-1
counter <-1

while (counter < 17){
  counter <- counter + 1 
  value <- value + counter
  print(value)
}

## Exercise 9

MyFunction <- function(num) {
  if (num <= -1){
    print("small")
  }
  if (num >-1 & num < 1) {
    print("medium")
  }
  if (num >= 1) {
    print("big")
  }
} 


