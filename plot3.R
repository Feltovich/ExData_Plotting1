# plot 3 - called from "Week 1 - Programming Assignment.R" 

png(filename = "plot3.png",
    width = 480, height = 480, units = "px")

with(subdata, plot(Date, Sub_metering_1,
                   type = "l",
                   col = "black",
                   xlab = "",
                   ylab = "Energy sub metering"))

with(subdata, lines(Date, Sub_metering_2,
                    type = "l",
                    col = "red"))

with(subdata, lines(Date, Sub_metering_3,
                    type = "l",
                    col = "blue"))


legend("topright", lty = c(1,1,1),
       col=c("black","blue","red"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

daterange=c(as.POSIXlt(min(subdata$Date)), as.POSIXlt(max(subdata$Date)))

axis.POSIXct(1, at=seq(daterange[1], daterange[2], by="day"), format="%a")

dev.off()