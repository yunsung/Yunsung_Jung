data <- read.csv("C:/Users/Jung/Desktop/data set_insta(original).csv")

## variables
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

ggplot(data, aes(x=Wel, y=PP, group=Wel, colour=Wel))+geom_point()