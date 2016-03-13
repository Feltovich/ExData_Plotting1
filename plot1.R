# plot 1 - called from "Week 1 - Programming Assignment.R" 

png(filename = "plot1.png",
    width = 480, height = 480, units = "px")

hist(subdata$Global_active_power, 
     col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")

dev.off()