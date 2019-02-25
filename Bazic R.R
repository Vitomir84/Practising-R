#Vektori

2^5
stock.prices <- c(23,27,23,21,34)
names(stock.prices) <- c("Mon", "Tue", "Wed", "Thu", "Fri")
stock.prices
prosek <- mean (stock.prices)
prosek
stock.prices > 23
over.23 <- stock.prices [stock.prices>23]
over.23
max <- max(stock.prices)
max

#Matrice

v <- c(1,2,3)
b <- c(4,5,6)

vezani <- rbind(v,b)
vezani

mat <- matrix(1:9, nrow = 3)
mat
is.matrix(mat)

mat2 <- matrix(1:25, byrow = T, nrow = 5)
mat2
mat2[2:3,2:3]
mat2[4:5, 4:5]
sum(mat2)

help(runif)
runif(20)
runif(5,1,10)

#Data Frame

Sam <- c(22, 150, "M")
Sam
Frank <- c(22, 165, "M")
Frank
Amy <- c(26, 120, "F")
df <- data.frame(Sam, Frank, Amy)
df
#Ovako

Age <- c(22, 25, 26)
Weight <- c(150, 165, 120)
Sex <- c("M", "M", "F")
df2 <- data.frame(Age, Weight, Sex)
df2
row.names(df2) = c("Sam", "Frank", "Amy")
df2

is.data.frame(mtcars)
mat <- matrix(1:25,nrow = 5)
mat

as.data.frame(mat)

df <- mtcars
head(df)
df[1:6,]
mean(df$mpg)
subset(df, cyl==6)
subset(df, am & gear & carb)
df[, 9:11]
df$performance <- df$hp/df$wt
head(df)
help(round)

round(df$performance, digits = 2)

head(df)
df$performance <- round(df$performance, digits = 2)
head(df)

df2 <- subset(df, df$hp > 100 & df$wt > 2.5)
mean(df2$mpg)
df3 <- subset(df, df$hp > 100 & df$wt > 2.5)
df3 <- subset(df, df$hp > 100 & df$wt > 2.5)$mpg
df3

mean(subset(df, df$hp > 100 & df$wt > 2.5)$mpg)
df["Valiant",]$mpg
df["Valiant",]
df2["Hornet Sportabout",]

#Conditional statements
x <- 3
if(x %% 2 == 0){
  print("Even number")
}else {
  print("Not even")}

x <- matrix(x)
if (is.matrix(x)==TRUE){
  print("Is a matrix")
}else {
  print("Not matrix")
}

#Ex 3: Create a script that given a numeric vector x with a length 3, will print out the elements 
#in order from high to low. 
#You must use if,else if, and else statements for your logic. (This code will be relatively long)

x <- c(50,200,1)
if (x[1]>x[2]){
  prvi <- x[1]
  drugi <- x[2]
}else{
  prvi <- x[2]
  drugi <- x[1]
}

if (x[3]> x[1] & x[3]>x[2]){
  prvi <- x[3]
  drugi <- prvi
  treci <- drugi
} else if(x[3]<x[1] & x[3] < x[2]){
  treci <- x[3]
}else {
  drugi <- x[3]
  treci <- drugi
}

print(paste(prvi,drugi,treci))


x <- c(3, 9, 100)
if(x[1]>x[2] & x[1]>x[3]){
  print(x[1])
}else if(x[2]>x[3] & x[2]>x[1]){
  print(x[2])
}else{
  print(x[3])
}

#Dplyr exercise
library(dplyr)

#Return rows of cars that have an mpg value greater than 20 and 6 cylinders.
head(mtcars)
head(filter(mtcars, mpg > 20, cyl == 6))

#Reorder the Data Frame by cyl first, then by descending wt.

head(arrange(mtcars, cyl, desc(wt)))

#Select the columns mpg and hp


mean(mtcars$mpg)

#Use pipe operators to get the mean hp value for cars with 6 cylinders.

mtcars %>% filter(cyl==6) %>% summarise (avg_hp = mean(hp))

#kreiranje fibonačijevog niza koji sabira dva prethodna broja do 4 miliona

x <- 0
y <- 1
fib <- c()
while (x < 4000000 & y < 4000000){
  x <- x + y
  y <- x + y
  fib = c(fib, x, y)
}
fib

# Fibonačijev zbir za zadati raspon brojeva

recurse_fibonacci <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(recurse_fibonacci(n-1) + recurse_fibonacci(n-2))
  }
}
# take input from the user
nterms = as.integer(readline(prompt="How many terms? "))
# check if the number of terms is valid
if(nterms <= 0) {
  print("Plese enter a positive integer")
} else {
  print("Fibonacci sequence:")
  for(i in 0:(nterms-1)) {
    print(recurse_fibonacci(i))
  }
}

recurse_fibonacci(3)
