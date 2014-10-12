# for each plot - retrieve pre-processed data
pdata <- read.csv("plotdata.txt")
library(lubridate)
pdata$DateTime <- ymd_hms(pdata$DateTime)

# plot2
#windows()
png("plot2.png")
with(pdata,plot(DateTime,Global_active_power,ylab="Global Active Power (kilowatts)",type="l"))
dev.off()
