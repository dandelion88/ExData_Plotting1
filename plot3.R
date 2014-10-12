# for each plot - retrieve pre-processed data
pdata <- read.csv("plotdata.txt")
library(lubridate)
pdata$DateTime <- ymd_hms(pdata$DateTime)

# plot3
#windows()
png("plot3.png")
with(pdata, {
	plot(DateTime,Sub_metering_1,ylab="Energy sub metering",type="l")
	lines(Sub_metering_2~DateTime,type="l",col="red")
	lines(Sub_metering_3~DateTime,type="l",col="blue")
	}
	)
legend("topright", pch = NULL, col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
dev.off()
