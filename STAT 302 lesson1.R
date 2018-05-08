#directly write code in R srcipt insdead of writing in console

#define a variable use = or <-
x <- 1
y = 2
x + y

#define a list
y <- 3:7
z = 1:5

#add two list if they have same length
y + z

#qnorm: 
qnorm(0.77)
qnorm(qnorm(0.77))

#exp:
exp(1) # = e
print(exp(1))


#define a function
myFun <- function(x){
  exp(x)
}
myFun(2) # return e^2

myFun2 <- function(x, y, z){
  x + y + z
}
myFun2(1,2,3)

#takes a vector
myFun3 <- function(x){
  x * 2
}
myFun3(y)

#use ?"question" for help
?"while"

#use ??"question" 

#print out all object and functions
objects()

#search all function or variables with keyword
ls(pattern = "Fun")

#save function or variable to certain file
save(x, y, z, file = "objects.rda")

#concatenate store 
list <- c(1:4, 8:5)
dput(list, "test1")
dget("test1")

#use sequence to define a vector
list2 <- seq(from=1, to=10, by=2)

#use repeat, takes any argument, integer, vector, string
list3 <- rep(list, times=5)
list3 <- rep(1, times=5)
list3 <- rep(c(1:5), times=5)

#create a matrix
matrix1 <- matrix(c(1:5, 6: 9), nrow = 3, byrow = TRUE) # in row sequence
matrix2 <- matrix(c(1:9, 10:12), nrow = 4, byrow = FALSE) # in column sequence

matrix2[c(1,2),c(2,3)] #(1,2),(1,3), (2,2), (2,3)
matrix2[c(1,4),3]

matrix2[4,] #all columns in row 4
matrix2[,3]
