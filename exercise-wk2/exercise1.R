## Part 1: Debugging

my.num <- 6
initials <- "T. H."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This doesn't work because the values/elements in 'my.vector' aren't numeric

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# This doesn't work because 'str_length" is not a defined function

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# This doesn't work because the variable 'initial' doesn't exist


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
v1 <- c("heyo", "yas")
typeof(v1)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  v1.length <- length(v1)
  v2.length <- length(v2)
  difference <- v1.length - v2.length
  if (difference < 0) {
    difference <- - + difference
  }
  return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
v2 <- c(1, 2, 3)
CompareLength(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  v1.length <- length(v1)
  v2.length <- length(v2)
  if (v1.length > v2.length) {
    difference <- v1.length - v2.length
    return(paste("Your first vector is longer by", difference, "elements"))
  } else if (v2.length > v1.length) {
    difference <- v2.length - v1.length
    return(paste("You second vector is longer by", difference, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(v1, v2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  result <- v1 + v2 + v3
  return(result)
}

# Send 3 vectors to your function to test it.
vector.1 <- 1:5
vector.2 <- 5:10
vector.3 <- 10:15
print(CombineVectors(vector.1, vector.2, vector.3))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


