#apply is used to evaluate a function (often anonymous) over the margins of an array
#it is moust often used to apply a function to the rows or columns of a matrix
#it can be used with general arrays, e.g. taking the average of an array of matrices
#it is not really faster than writing a loop, but it works in one line

str(apply)
#function (X, MARGIN, FUN, ...)

#X is an array
#MARGIN is an integer vector indicating which margins should be "retained"
#FUN is a function to be applied
#...is for other arguments to be passed to FUN

x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean) #2nd dimension: columns
apply(x, 1, sum) #1st dimension: rows

#for sums and means of matrix dimensions
rowSums = apply(x, 1, sum)
rowMeans = apply(x, 1, mean)
colSums = apply(x, 2, sum)
colMeans = apply(x, 2, mean)

#other ways to apply
#quantiles of the rows of a matrix
x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))

a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean) #want to collapse the 3rd dimension
rowMeans(a, dims = 2)

