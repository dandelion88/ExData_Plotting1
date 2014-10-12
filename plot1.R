# for each plot - retrieve pre-processed data
pdata <- read.csv("plotdata.txt")
library(lubridate)
pdata$DateTime <- ymd_hms(pdata$DateTime)

# plot1
#windows()
png("plot1.png")
plot1=hist(pdata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()