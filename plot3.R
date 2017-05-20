##creating Plot3
png(filename = "plot3.png")

plot(data2$date_time,data2$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(data2$date_time,data2$Sub_metering_1)
lines(data2$date_time,data2$Sub_metering_2,col="red")
lines(data2$date_time,data2$Sub_metering_3,col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=c(1,1,1),col=c("black","red","blue"))
dev.off()