#for loop

for(i in 1:5) {
  x <- c(x, i)
}

A <- c(1,1,1)
for(j in 1:10){ 
  A = cbind(A, c(j,j^2,5*j))
}

for(i in 1:100){
  hist(runif(100), breaks=seq(from=0, to=1, by=0.05), probability =T, ylim=c(0,1.6), col="palegreen")
  abline(h=1, lwd=3, col="purple")
  Sys.sleep(0.5)
}

x0 <- c(1, 1)
x0 <- c(1, 1)
for (i in 1 : 10) {
  x0 <-  c(x0, x0[i+1]+x0[i])
}

y0 <- 5
y0_trace <- y0
for (i in 1 : 20) {
  y0 <- -3 * (y0 -3) + y0
  y0_trace <- c(y0_trace, y0)
}

# create a function
fun_one <- function(x) {
  if (is.matrix(x)) {
    x = x**2
  } else {
    x = 0
  }
}

fun_two <- function(y){
  if(is.matrix(y)){
    y <- y+1
    y <- y^2 
  } 
  if(is.matrix(y)){ 
    y <- 2*y
  } 
  return(y)
} 

fun_three <- function(x, y){
  if (x >5 & y > 5){
    print("A")
  } else if (x < 0 | y < 0) {
    print("B")
  } else {
    print("C")
  }
}