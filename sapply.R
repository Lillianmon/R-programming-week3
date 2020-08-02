#sapply will try to simplify the result of lapply if possible
#if result is a list where every element is length 1, then a vector is returned
#if the result is a list where every element is a vector of the same length (>1), a matrix is returned
#if it cannot figure things out, a list is returned

x <- list (a= 1:5, b = rnorm(10), c = rnorm(20, 1), d = (rnorm(100, 5)))
lapply(x, mean)
sapply(x, mean)