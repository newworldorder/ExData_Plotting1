# read in data 
h <- read.table("household_power_consumption.txt", nrows = 2880, skip = 66637, sep = ";")
colnames(h) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
# add a Datetime column 
h$RTime <- strptime(paste(h$Date, h$Time), " %d/%m/%Y %H:%M:%S")

# create plot and output to a png 
png(file = "plot2.png")
plot(h$RTime, h$Global_acti, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()