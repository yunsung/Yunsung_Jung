
## draw two dice and find a plot of sum
# solution
# number of dice rolls
d = 100000

#role two dice 10 times
dice1 <- sample(6,d, replace=TRUE)
dice2 <- sample(6,d, replace=TRUE)

dice_roll <- dice1 + dice2
hist(dice_roll,freq=F)

#another way when 10000 numbers draw
x <- sample(6, 10000, replace=T)
y <- sample(6, 10000, Replace=T)
sum <- x+y
hist(sum)




## cdf

plot(ecdf(dice_roll))
# plot.ecdf(dice_roll)


#find normal dist
n <- rnorm(1000)
hist(n)
plot(n)



## pecentile of my height in class
x <- 67
height_inch <- x
height_stand <- (height_inch-70)/5
height1 <- pnorm(height_stand, mean=0, sd=1, lower.tail=T, log.p=F)
height1

# another way
height2 <- pnorm(height_inch, mean=70, sd=5, lower.tail=T, log.p=F)
height2


##Normal Distribution Example
# probability of X>1 when N(3,5)
x <- 1
cdf1 <- pnorm(x, mean=3, sd=sqrt(5), lower.tail=T, log.p=F)
1-cdf1
# another way
1-pnorm((-2)/sqrt(5))
