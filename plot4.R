##creating Plot4
png(filename = "plot4.png")

##setting structure
par(mfrow=c(2,2))


##creating Plot4.1
library(lubridate)

data2$date_time <- dmy_hms(paste(data2$Date,data2$Time))

plot(data2$date_time,data2$Global_active_power,type="n",ylab="Global Active Power",xlab="")
lines(data2$date_time,data2$Global_active_power)

##creating Plot4.2
plot(data2$date_time,data2$Voltage,xlab="datetime",ylab="Voltage",type="n")
lines(data2$date_time,data2$Voltage)

##creating Plot4.3
plot(data2$date_time,data2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(data2$date_time,data2$Sub_metering_1)
lines(data2$date_time,data2$Sub_metering_2,col="red")
lines(data2$date_time,data2$Sub_metering_3,col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(1,1,1),col=c("black","red","blue"))

##creating Plot4.4
plot(data2$date_time,data2$Global_reactive_power,type="n",xlab="datetime",ylab="Global_reactive_power")
lines(data2$date_time,data2$Global_reactive_power)

dev.off()