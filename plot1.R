download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","~/ExData_Plotting1")
setwd("~/ExData_Plotting1")
unzip(as.character(paste(getwd(),"/exdata%252Fdata%252Fhousehold_power_consumption.zip",sep="")))
data <- read.delim("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
data2 <- data[data$Date ==  "1/2/2007" | data$Date == "2/2/2007",]

##creating Plot1
png(filename = "plot1.png")
hist(data2$Global_active_power,col="red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()