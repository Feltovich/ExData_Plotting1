# plot 2 - called from "Week 1 - Programming Assignment.R" 

png(filename = "plot2.png",
    width = 480, height = 480, units = "px")

plot(Global_active_power ~ Date, subdata, 
     type = "l", 
     xaxt = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

daterange=c(as.POSIXlt(min(subdata$Date)), as.POSIXlt(max(subdata$Date)))

axis.POSIXct(1, at=seq(daterange[1], daterange[2], by="day"), format="%a")

dev.off()