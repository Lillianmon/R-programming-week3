#split takes a vector or other objects and splits it into groups determined by a factor or list of factors

str(split)
#function(x, f, drop = FALSE, ...)

X <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f)

lapply(split(x, f), mean) #split sth and lapply the number to it

#splitting a data frame
library(datasets)
head(airquality)

s <- split (airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))


sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],
                               na.rm = TRUE))


#splitting on more than one level

x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)
f1
f2
interaction(f1, f2)

str(split(x, list(f1, f2)))

str(split(x, list(f1, f2), drop = TRUE))

