#function default number

fun_one <- function(x, y, z = 10) {
  #z is a default number, that can be overwritten
  print(x, y, z)
  return (x + y + z)
}

#import files
#Data can be separated by space, (\t) or comma
#.csv : comma separated value
# if data separate by semicolon ";", use read.csv2
#use read.table, first "setwd" to locate folder
setwd("C:/Users/Nolan Tang/Desktop/STAT 302/Week3")
ReactionTime <- read.table("ReactionTime.txt", header = T, sep = ",")
head(ReactionTime) #return few first observations and header

#write a file by "write.table"
write.table(ReactionTime, "xx.txt",sep = ",")
write.table(ReactionTime, "xx.txt",sep = ",", row.name = F)
write.table(ReactionTime, "xx.txt",sep = ",", quote = FALSE, row.names = TRUE)

#add extra coloum in data set
new_time <- ReactionTime$Reaction/10 #every value in Reaction variable divide by ten
ReactionTime_new <- cbind(ReactionTime, new_time)

#change data set coloum names
colnames(ReactionTime_new)[c(2,3)] <- c("Station2", "Shift2")

#"table" counts occurance of data
table(ReactionTime$Reaction)
table(ReactionTime$Station, ReactionTime$Shift)

#use "data" to check R build-in dataset
