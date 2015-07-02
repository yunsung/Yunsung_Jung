#clean variables
rm(list=ls(all=TRUE))

# read in data
P <- read.csv("C:/Users/Jung/Desktop/ISS/1. Data science/7.2/UNdata_precipitation.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?



y1999 <- P[P$Year == 1999,]    ## to 2005
y2005 <- P[P$Year == 2005,]

hist(log10(y1999$Value))

t.test(log10(y1999$Value),log10(y2005$Value))



# (2) Precipitation for all countries over time.

precipitation <- rbind(mean(log10(P[P$Year==1990,]$Value))
                       ,mean(log10(P[P$Year==1991,]$Value))
                       ,mean(log10(P[P$Year==1992,]$Value))
                       ,mean(log10(P[P$Year==1993,]$Value))
                       ,mean(log10(P[P$Year==1994,]$Value))
                       ,mean(log10(P[P$Year==1995,]$Value))
                       ,mean(log10(P[P$Year==1996,]$Value))
                       ,mean(log10(P[P$Year==1997,]$Value))
                       ,mean(log10(P[P$Year==1998,]$Value))
                       ,mean(log10(P[P$Year==1999,]$Value))
                       ,mean(log10(P[P$Year==2000,]$Value))
                       ,mean(log10(P[P$Year==2001,]$Value))
                       ,mean(log10(P[P$Year==2002,]$Value))
                       ,mean(log10(P[P$Year==2003,]$Value))
                       ,mean(log10(P[P$Year==2004,]$Value))
                       ,mean(log10(P[P$Year==2005,]$Value))
                       ,mean(log10(P[P$Year==2006,]$Value))
                       ,mean(log10(P[P$Year==2007,]$Value))
                       ,mean(log10(P[P$Year==2008,]$Value))
                       ,mean(log10(P[P$Year==2009,]$Value)))
year <- c(1990:2009)
plot(year, precipitation, type="l")