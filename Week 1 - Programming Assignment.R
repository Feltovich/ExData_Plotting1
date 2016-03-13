# Set working directory below.  Working directory
# should contain dataset household_power_consumption.txt
# and plotting files plot1.R, plot2.R, plot3.R, and plot4.R

setwd("F:/MY DOCUMENTS/Coursera/Exploratory Data Analysis/Week 1/Programming Assignment")

##### No USER INPUT BELOW THIS LINE #####

data <- read.table("household_power_consumption.txt", 
                   header=TRUE, 
                   sep=";",
                   na.strings="?")

data$DateTime <- paste(data$Date, data$Time)

data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")

data <- cbind(data[,10],data[,3:9])

names(data)[1] <- "Date"

subdata <- subset(data, Date >= '2007-02-01'& Date <= '2007-02-03')

# plot 1

source("plot1.R")

# plot 2

source("plot2.R")

# plot 3

source("plot3.R")

# plot 4

source("plot4.R")