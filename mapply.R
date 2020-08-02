#mapply is a multivariate apply of sorts which applies a function in parallel over a set of arguments
str(mapply)
#function (FUN, ..., MoreArgs = NULL, SIMPLIFY = TRUE, USE.NAMES = TRUE)
#Fun is a function to apply
#...contains arguments to apply over
#MoreArgs is a list of other arguments to FUN
#SIMPLIFY indicates whether the result should be simplified

list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
#instead we could do:
mapply(rep, 1:4, 4:1)

noise <- function(n, mean, sd){
  rnorm(n, mean, sd)
}
noise(5, 1, 2)
noise(1:5, 1:5, 2)

mapply(noise, 1:5, 1:5, 2)
#which is the same with
list(noise(1, 1, 2), noise(2, 2, 2),
     noise(3, 3, 2), noise(4, 4, 2)
     noise(5, 5, 2))