# get and subset data
cpdata=read.table("household_power_consumption.txt",sep=";",header=T)

cpdata$Date <- as.character(as.Date(dmy(cpdata$Date)))
cpdata$Time <- as.character(cpdata$Time)
plotdata=subset(cpdata,Date=="2007-02-01" | Date=="2007-02-02")
rm(cpdata)

DateTime <- paste(plotdata$Date,plotdata$Time)
plotdata <- cbind(plotdata,DateTime)
plotdata$DateTime <- as.character(plotdata$DateTime)
write.table(plotdata,"plotdata.txt",sep=",",row.names=FALSE)
rm(plotdata)
