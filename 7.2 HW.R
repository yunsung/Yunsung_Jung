rm(list=ls(all=TRUE))
Indic <- read.csv("C:/Users/Jung/Desktop/ISS/1. Data science/7.2/Popular indicators (Korea)/Popular indicators_Data1.csv")


#1 plot of Korean population between 2005 and 2013 
plot(Indic$Year, Indic$Population, type="l")

#2 plot of Korean Internet users
plot(Indic$Year, Indic$Internet.users, type="l")
