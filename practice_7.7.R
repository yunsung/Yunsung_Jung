
# number of dice rolls
d = 5

dice <- sample(6,d, replace=TRUE)
dice_mean <- mean(dice)


#Central Limit Theorem

CLT <- function(numb_throw = 5, numb_rep = 500) {
  exp.res <- matrix(sample(1:6, numb_throw * numb_rep, replace = T), ncol = numb_throw, byrow = T)
  
  # return(apply(exp.res, 1, mean))
  return(rowMeans(exp.res))
}

hist(CLT(numb_throw = 5, numb_rep = 500), nclass = 20, main = "Central Limit Theorem", freq=F)


### uniform distribution
## Jevin's another way

hist(runif(10000)*10, main="")
means <- numeric(10000)
for (i in 1:10000) {
  means[i] <- mean(runif(5)*10)
}
hist(means,freq=F)
mean(means)
sd(means)
xv <- seq(0,10,0.1)
yv <- dnorm(xv,mean=mean(means),sd=sd(means))
lines(xv,yv)
