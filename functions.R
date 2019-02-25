#functions

prod <- function(number1, number2){
  result <- number1*number2
  return(result)
}
prod(3,4)

#Ex 2: Create a function that accepts two arguments, an integer 
#and a vector of integers. It returns TRUE if the integer is present in the vector, 
#otherwise it returns FALSE. Make sure you pay careful 
#attention to your placement of the return(FALSE) line in your function!

num_check <- function(num1, v){
  for(ele in v) {
    if (ele==num1){
      return(TRUE)
      }
  }
return (FALSE)
  }

num_check(2,c(1,2,3,4,5))
num_check(2, c(3,5,5,5))

#Ex 3: Create a function that accepts two arguments, an integer and a vector of integers. 
#It returns the count of the number of occurences of the integer in the input vector.



num_count <- function(num1, v){
  result <- 0
  for(ele in v) {
    if (num1==ele){
      result <- result+1
    }
  }
  return (result)
}

num_count(2,c(1,1,2,2,3,3))
num_count(2,c(1,1,3,3))
num_count(2, c(2,2,2,2,2))

#Ex 4: We want to ship bars of aluminum. We will create a function that accepts an integer 
#representing the requested kilograms of aluminum for the package to be shipped. 
#To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms each). 
#Return the least number of bars needed.
#For example, a load of 6 kg requires a minimum of two bars (1 5kg bars and 1 1kg bars). 
#A load of 17 kg requires a minimum of 5 bars (3 5kg bars and 2 1kg bars).

bar_count <- function(num){
  broj_barela_od_5kg <- num%/%5
  manji_ostatak <- num%%5
  broj_barela_od_1kg <- manji_ostatak%/%1
  ukupan_broj_barela <- broj_barela_od_5kg + broj_barela_od_1kg
return(ukupan_broj_barela)
}


print(bar_count(27))
print(bar_count(31))
print(bar_count(41))

#Ex 5: Create a function that accepts 3 integer values and returns their sum. 
#However, if an integer value is evenly divisible by 3, then it does not count towards the sum. 
#Return zero if all numbers are evenly divisible by 3. 
#Hint: You may want to use the append() function.
help("append")

summer <- function(num1, num2, num3){
  result <- num1 + num2 + num3 
    if (result%%3 == 0) {
      return ("0")
    }else{return (result)}
}

summer <- function(a,b,c){
  napolje <- c(0)
  if (a%%3 !=0){
    napolje <- append(a, napolje)
  }
  if (b%%3 !=0){
    napolje <- append(b, napolje)
  }
  if (c%%3 !=0){
    napolje <- append(c, napolje)
  }
  return(sum(napolje))
}

print(summer(napolje))

summer(3,3,3)
summer(2,2,1)
summer(7,9,4)

help(any)

#Ex 6: Create a function that will return TRUE if an input integer is prime. 
#Otherwise, return FALSE. You may want to look into the any() function. 
#There are many possible solutions to this problem.

prime <- function(num) {
  modulo2 <- num%%2
  modulo3 <- num%%3
  modulo5 <- num%%5
  if (modulo2 == 0 | modulo3 == 0 | modulo5==0){
    print("Nije prost broj")
}   else  {print("Prost broj")
    }
}

#precizniji način

prime <- function (num){
  if (num==2){
    return (FALSE)
  }
  for (x in 2:(num-1)){
    if (num%%x == 0){
      return(TRUE)
    }
  }
    return(TRUE)
}

prime(13)
prime(86)
prime(7)
prime(2)
prime(237)
prime(131)
