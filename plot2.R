library(lubridate)

data2$date_time <- dmy_hms(paste(data2$Date,data2$Time))

##creating Plot2
png(filename = "plot2.png")

plot(data2$date_time,data2$Global_active_power,type="n",ylab="Global Active Power (kilowatts)",xlab="")
lines(data2$date_time,data2$Global_active_power)
dev.off()