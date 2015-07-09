##2
MS1 <- c(20,32,35,34,40,51,52,56,57,68)
MS2 <- c(23,34,36,44,42,51,54,57,54,62)
#a
plot(MS1, MS2, xlab="first visit spent", ylab="second visit spent")
#b
#There is a strong positive relationship in money spent on first vist and second visit.
#c
corr <- cor(MS1, MS2)  # 0.9690331
# se of p is sqrt((1-r2)/(n-2))

#d
SE <- sqrt((1-corr^2)/length(MS1-2))

#e
cor.t <- cor.test(MS1, MS2)
cor.t$conf.int

##3
#a
MS2_E <- MS2 + 30
MS2_E
plot(MS1,MS2_E)
corr2 <- cor(MS1, MS2_E)  # 0.9690331
corr2  
# There is no difference if $30 add to money spent on second visit.
#b
MS1_E <- MS1*100
MS1_E
plot(MS1_E,MS2_E)
corr3 <- cor(MS1_E, MS2_E)
corr3
# There is no difference if money spent on first visit is multiplied to 100


##4

b1 <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
b2 <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)
plot (b1, b2)

#b, mortality = 16.37 + 10.26*
m <- lm(b2~b1)   # lm(y~x) ; y is response var
abline(m)  # make a line 
m

#c
#H0 : home range size does not predict infant mortality (beta =0)
#Ha :                 does predict                      (beta !=0)
#answer : b = 9.955, a=16.280, Se = 2.766, t=3.6, df=18, P=0.002

summary(m)
a <- m$coefficients[1]
b <- m$coefficients[2]
a
b


# predicted values vs actual values
b3 <- mat.or.vec(20,1)
for (i in 1:length(b3)){
  b3[i] = b*b1[i]+ a
  }
points(b1,b3,col="red")


#d
b1_n <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
b2_n <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25)
m_n <- lm(b2_n~b1_n)   # lm(y~x) ; y is response var
abline(m_n)
summary(m_n)