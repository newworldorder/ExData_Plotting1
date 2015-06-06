# read in data 
h <- read.table("household_power_consumption.txt", nrows = 2880, skip = 66637, sep = ";")
colnames(h) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
# add a Datetime column 
h$RTime <- strptime(paste(h$Date, h$Time), " %d/%m/%Y %H:%M:%S")

# create 2 x 2 plot output it to a png 
png(file = "plot4.png")
par(mfrow = c(2,2))
plot(h$RTime, h$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
lines(h$RTime, h$Sub_metering_2, col = "red")
lines(h$RTime, h$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"), bty = "n")
plot(h$RTime, h$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(h$RTime, h$Global_acti, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
plot(h$RTime, h$Global_reactive_power, type="l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off() 