data <- read.csv("C:/Users/Jung/Desktop/data set_insta.csv")

Gu <- data$Gu
PP <- data$Property_price
Pos <- data$Position
Trans <- data$Transportation
Edu <- data$Education
Wel <- data$Welfare
Park <- data$Park
Handi <- data$Handicapped
Nurse <- data$Nursery
Crim <- data$Crime_rate
Inc <- data$Income
#ex1

model1 <- lm(PP~Trans, data=data)
data$prd <- predict(model1, data)
plot(data$Trans, data$PP)
abline(model1)
points(data$Trans, data$prd, col="blue", pch=16)

#ex2

newdata <- data.frame(Trans = seq(1,25,0.5))
newdata$pred <- predict(model1, newdata)
points(newdata$Trans, newdata$pred, col="green")
points(newdata$Trans, newdata$pred, col="green", pch=3)

