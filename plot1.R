# read in data 
h <- read.table("household_power_consumption.txt", nrows = 2880, skip = 66637, sep = ";")
colnames(h) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity","Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

# create plot and output to a png 
png(file = "plot1.png")
hist(h$Global_act, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()