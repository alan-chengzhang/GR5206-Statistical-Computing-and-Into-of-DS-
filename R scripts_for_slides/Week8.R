setwd("C:/Users/Alan_/Desktop/Semester1 Courses/STAT computing/Week 8")
snoq <- read.csv("snoqualmie.csv",header=FALSE,as.is=TRUE)
colnames(snoq) = 1:366
snoq$year <- 1948:1983

#install.packages("reshape2")
library("reshape2")
snoq.melt <- melt(snoq, id.vars = "year", variable.names = "day", value.name = "precip")
head(snoq.melt)


order(snoq.melt$year)

snoq.melt.chron <- snoq.melt[order(snoq.melt$year), ]



snoq.melt.chron <- na.omit(snoq.melt.chron)


short.chron <- snoq.melt.chron[-nrow(snoq.melt.chron), ]


precip.next <- data.frame(snoq.melt.chron$precip[-1])