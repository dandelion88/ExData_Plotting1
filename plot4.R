# for each plot - retrieve pre-processed data
pdata <- read.csv("plotdata.txt")
library(lubridate)
pdata$DateTime <- ymd_hms(pdata$DateTime)

# plot4
#windows()
png("plot4.png")
par(mfrow=c(2,2))
with(pdata, {
 # plot1
 plot(DateTime,Global_active_power,xlab="",ylab="Global Active Power",type="l")
 # plot2
 plot(DateTime,Voltage,ylab="Voltage",type="l")
 # plot3
 plot(DateTime,Sub_metering_1,xlab="",ylab="Energy sub metering",type="l")
 legend("topright", pch = 1, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
 lines(Sub_metering_2~DateTime,type="l",col="red")
 lines(Sub_metering_3~DateTime,type="l",col="blue")
 # plot4
 plot(DateTime,Global_reactive_power,type="l")
 }
 )
dev.off()
