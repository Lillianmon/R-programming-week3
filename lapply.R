#loop functions

#lapply: three arguments
#(1) a list x
#(2) a function fun
#(3) other arguments via its... argument

#lapply always returns a list, regardless of the class of the input
x <- list (a= 1:5, b = rnorm(10))
lapply(x, mean)


x <- list (a= 1:5, b = rnorm(10), c = rnorm(20, 1), d = (rnorm(100, 5)))
lapply(x, mean)


x <- 1:4
lapply(x, runif)

#lapply and friends make heavy use of anonymous functions
x <- list(a = matrix(1:4, 2,2), b = matrix(1:6, 3, 2))
x
#extract the first column of the matrix
#an anonymous function (because it does not have a name) for extracting the first column of each matrix
lapply(x, function(elt) alt[,1])



