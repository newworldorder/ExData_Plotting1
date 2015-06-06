# read in data 
h <- read.table("household_power_consumption.txt", nrows = 2880, skip = 66637, sep = ";")
colnames(h) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
# add a Datetime column 
h$RTime <- strptime(paste(h$Date, h$Time), " %d/%m/%Y %H:%M:%S")

# create plot and output to a png 
png(file = "plot3.png")
plot(h$RTime, h$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
lines(h$RTime, h$Sub_metering_2, col = "red")
lines(h$RTime, h$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))
dev.off()