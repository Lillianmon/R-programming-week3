#primary tools for debugging functions in R:
#traceback: tell where the error occurs
#debug: allows to step through execution of a function one line at a time
#browser: suspends the execution of a function wherever it is called and puts the function in debug mode
#trace: allow to insert debugging code into a function a specific places
#recover: allows to modify the error behaviors so that you can browse the function call stack

#These are interactive tools

#examples:
#traceback
mean(x)
traceback()

#debug
debug(lm)
lm(y - x)

#recover
options(error = recover)
read.csv("asdfsadf") #file that not exist


