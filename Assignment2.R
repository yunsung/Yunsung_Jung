
##1
Score <- c(90, 95, 89, 71, 73, 96, 87, 95, 107, 89, 96, 80, 97, 95, 102, 97, 93, 101, 82, 83, 74, 91, 83, 98, 95,	
111, 99, 120, 93,84)
#a
mean(Score)  # mean = 92.2

#b Sample mean is not exactly same as poulation mean. But 30 sample observations are big so they are usually followed population
#c standard error
se <- sd(Score)/sqrt(length(Score))  # standard error = 1.98
#d
se
#e
low_ci <- mean(Score) - qt(.95, 29)*se # mean(Score) -2*se
hi_ci <- mean(Score) + qt(.95, 29)*se  # mean(Score) +2*se
ci <- c(low_ci, hi_ci)
mean(Score) - 1.96*se
ci  #(88.84163, 95.55837)
# another way
t.test(Score)  #(88.15754, 96.24246)
#f 95% confidence interval means 95% of sample is included in it.


##2
Male <- c(220.1, 218.6, 229.6, 228.8,222.0,224.1, 226.5)
Female <- c(223.4,221.5,230.2,224.3,223.8,230.8)
layout(matrix(2:1, ncol=1))
hist(Male)
hist(Female)
t.test(Male, Female, conf.level = .95)
# t = -0.6318, df = 10.942, p-value = 0.5405, null hypothesis is not rejected.
# 95% CI =(-6.386747, 3.539128)

##3

#a F. p-value says nothing about the size of the effect. I can not know it with this result.
#b T. Because null hypothesis is rejected, it has some effect. 
#c F. Type 1 error is determined by alpha which is a significant level. Alpha is 0.05
#d F. Type 2 error is determined by beta and it does not know in this information.
#e T. P-value is larger than the significance level

##4
PA <- c(248,236,269,254,249,251,260,245,239,255)
PB <- c(380,391,377,392,398,374)
Ad_PB <- PB/1.5

#look data
layout(matrix(2:1, ncol=1))
hist(PA,xlim=c(250,300))
hist(AD_PB,xlim=c(250,300))

wilcox.test(PA,Ad_PB)

##5
# Standard deviation looks spread of the data basis on the population mean.
# Standard error means how sample means spread out to the population mean.
# When n is larger, se goes 0 and sample mean is close to the population mean.