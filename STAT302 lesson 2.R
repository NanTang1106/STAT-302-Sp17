#reverse all the integer
x <- rev(1:20)

#check data type for x
str(x)
c
#sequence three arguments (start, end, interval)
y <- seq(1, 29, 3)

#numerical: decimal value
#three type in R: int, num, chr

#concatenation
z <- c('a',1) #one chr and one int
str(z) #result is chr
zz <- c('a', 1.5) #one chr and one num
str(zz) #result is chr
zzz <- c(1, 1.5) #one num and one int
str(zzz) #result is num

#data type rank: low to high, int - num - chr

#logic vector: logi
logic1 <- 1.5 < 3 #TRUE
logic1 <- T
logic1 <- TRUE

logic2 <- c(T, F)
logic2 + 1 #return 2,1 because TRUE = 1, FALSE = 0

#use is.logical() to test if is logical
#use is.unmerical() to test if is num

#type translate
as.integer(logic1)

#repeat vector
rep(c(1,2,3), time=3) #repeat the whole round
rep(c(1,2,3), each=3) #repeat each number by #times 
rep(c(1,2,3), length.out=7) #overall output length is 7

#extract values from vector
x[c(1,3,5)]
x[x<10] #return all values <10 in vector

#remove values in vector
(1:5)[-c(1,5)] #return 2,3,4
x[-1]

#replace values in vector
x[c(1,5)] = c(6,7)

x[3 < c(2,4)] #repeat c(2,4), while true return the value, false, ignore the value

#reverse sign
!TRUE #return false

#which return index number of true values
which((1:6) > c(2,3)) #return 3,4,5,6, true values' index number

#methods for vector
length(x) #return length

sum(x) #return sum of all values

prod(x) #return production of all values

cumsum(x) #return cumulative sum for each values in vector

sort(x) #sort values in ordered sequence

order(x)

#math functions
round(2.33333, 3) #round 2.33333 tp three decimal place

signif(22.33333, 3) #leave significant digit

factorial(6) #½×³Ë

#add names to values in data
number <- 1:26
names(number) <- letters


