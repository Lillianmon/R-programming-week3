#tapply is used to apply a function over subsets of a vector
str(tapply)
#function(X, INDEX, FUN = NULL, ..., simplify = TRUE)
#X is a vector
#INDEX is a factor or a list of factors
#FUN is a function to be applied
#...contains other arguments to be passed FUN
#simplify, should we simplify the result

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
f

tapply(x, f, mean)

tapply(x, f, mean, simplify = FALSE)

tapply(x, f, range)

