# 1, code to illustrate the three different ways assigning a value to a variable. 

x <- 2
y = 3
assign ('z', 4)

# 2, demonstration code that combine the sum() and is.na() to count the number of missing values in a vector

v1 <- c(3, 4, NA, 5, NA, 6, NA)
sum(is.na(v1))

# 3, demonstration code to illustrate the difference between the library() function and the require() function

test1<-require("abc") # show warning message
test1                 # [1] FALSE

test2 <- library("abc") # error message
test2                   # Error: object 'test2' not found

# demonstration code for require() used as logical value
if(require("abc")){
    print("abc is loaded correctly")
} else {
    print("abc is not loaded correctly")
}


# According to R menu, library() and require() both load the package and attach it on the search list. 
# require() returns FALSE and gives a warning if the package doesn't exist. Therefore it can be used inside other functions.
# library() would generate an error by default if the package does not exist. 
# Since both serve the same basic function but require() provides more benefits, 
# one might prefer to use require() instead of library().

