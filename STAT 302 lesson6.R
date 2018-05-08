### R Lecture 06
## Scatter plot use "plot"
## p3
plot(faithful)


## p4
head(faithful)

plot(faithful[,1],faithful[,2])

plot(x=faithful[,1],y=faithful[,2])

plot(y=faithful[,2],x=faithful[,1])
  # these three method gives the same result

plot(faithful[,2],faithful[,1])
  # this revserse the x and y


## p6
plot(faithful[,1],faithful[,2],
     xlab="eruption length (min)",
     ylab="waiting time to next eruption (min)")
  # xlab/ylab: labels
  

## p7
plot(faithful[,1],faithful[,2],
     main = "Old Faithful Dataset")


## p8
plot(faithful[,1],faithful[,2],
     pch=20) #change symbol of each point


## p9
plot(faithful[,1],faithful[,2],
     pch=15)


## p10
plot(faithful[,1],faithful[,2],
     pch=20, col="red")


## p11
plot(faithful[,1],faithful[,2],
     pch=20, col="orchid")


## p12
plot(faithful[,1],faithful[,2],
     pch=20, col="orchid", cex=2) #cex determinds size of each point


## p13: many options
plot(faithful[,1],faithful[,2],
     pch=20, col="orchid", cex=1,
     xlim=c(0,10), ylim=c(30,200), #adjust range
     xlab="X axis", cex.lab=2, #change size of lab and main
     cex.axis=2) #change scale on axis



## p14: abline
plot(faithful[,1],faithful[,2],
     pch=20, col="orchid")
abline(a=33, b=11, lwd=10, col="limegreen")
  # a: intercept; b: slope; lwd: width of line
abline(a=23, b=11, lwd=5, col="red")

abline(h = 70) #horizontal line
abline(v = 3) #vertical line

## p15: points
plot(faithful[,1],faithful[,2],
     pch=20, col="orchid")
points(x=2:5, y=c(90,85,65,60), 
      pch=20, cex=5, col="blue")

## p16: lines #that pass through these points
lines(x=2:5, y=c(90,85,65,60), 
       lwd=3, col="blue")

legend("bottomright", 
       c("data points","new points"),
       pch=c(20,20), col=c("orchid","blue"),
       cex=2)






## exercise - 1
col_tmp <- rep("limegreen",nrow(faithful))
col_tmp[which(faithful$eruptions<3)]<- "orchid"
plot(faithful, pch=16, col=col_tmp)
abline(v=3, lwd=3, col="brown")



## Histogram
## p19
hist(faithful$waiting)


## p20
summary(faithful$waiting)

hist(faithful$waiting, 
     breaks= seq(from=40,to=100, by=1))


## p21
hist(faithful$waiting, 
     breaks= seq(from=40,to=100, by=1))


## p22
hist(faithful$waiting, col="skyblue",
     breaks= seq(from=40,to=100, by=2))


## p23
hist(faithful$waiting, col=c("skyblue","blue"),
     breaks= seq(from=40,to=100, by=2))


## p24
hist_break <-seq(from=40,to=100, by=2)
col_break <- rep("purple",length(hist_break))
col_break[which(hist_break<70)] <- "limegreen"



## QQplot
## p25
  # x is a standard normal random sample, n=100
x <- rnorm(300)

qqnorm(x,pch=16,cex=.5) 
  # makes QQ-plot of sample

qqline(x) 
  # adds a fitted line to the previous plot.
  # line is fitted through 1st and 3rd quartiles


## p27
qqnorm(faithful$waiting, pch=16, cex=.5,
       main="QQ plot for waiting time")
qqline(faithful$waiting)




## Box plot
## p28
summary(chickwts)

par(mfrow=c(1,1))
boxplot(weight~feed,data=chickwts)
  # boxplot for variable weight, split
  # by the type of feed (factor)


## p30
setwd("C:\Users\Nolan Tang\Desktop\RFiles")
col_tmp <- c("lawngreen","orchid","orange",
             "khaki", "steelblue","violetred")
pdf("plot_new.pdf")
boxplot(weight~feed,data=chickwts,
        col = col_tmp)
dev.off()

## p31
summary(iris)

boxplot(iris$Sepal.Length,iris$Sepal.Width,
        iris$Petal.Length, names=c("Sepal.Length",
        "Sepal.Width", "Petal.Length"),
        main="Iris (partial)", ylab="cm")


## Back to scatter plot
## p33
LakeHuron

plot(LakeHuron)

par(mfrow=c(1,3)) #each plot contains 1 row and 3 columns


plot(LakeHuron,type="l",main='type="l"')
# points connected by lines

plot(LakeHuron,type="p",main='type="p"')
# only points are plotted

plot(LakeHuron,type="b",main='type="b"')
# both points and lines are plotted


## p35
par(mfrow=c(1,1))
plot(iris,col=
        rep(c("red","blue","orange"),each=50))


## p36
pdf("myplot.pdf")
plot(iris,col=
       rep(c("red","blue","orange"),each=50))
dev.off()


## Exercise - 2
hist(faithful$waiting, 
     breaks= seq(from=40,to=100, by=2),
     col=1:8)


hist(faithful$waiting, 
     breaks= seq(from=40,to=100, by=2),
     col=c("red","red","blue"))


col_tmp <- rep("skyblue",length(seq(from=40,to=100, by=2))-1)
col_tmp[which(seq(from=40,to=100, by=2)<80)] <- "pink"
hist(faithful$waiting, 
     breaks= seq(from=40,to=100, by=2),
     col=col_tmp)



## appendix
normalhist <- function(n=1000){
  x <- rnorm(n)
  xx <- seq(-4,4,.1)
  hist(x,breaks=xx,probability=T,
       main="normal histogram")
  yy <- dnorm(xx)
  lines(xx,yy,col="blue")
  text(-4,.3,
       expression(varphi(x)==
          over(1,sqrt(2*pi))*phantom(0)* 
          e^{-x^2/2}),adj=0,col="blue")
}

normalhist()

