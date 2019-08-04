# Loading the data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", na.strings = "?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]

# Plot 4 code
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot4.png", height = 480, width = 480)
par(mfrow = c(2, 2))

# Top left plot
plot(datetime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

# Top right plot
plot(datetime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

# Bottom left plot
plot(datetime, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(datetime, data$Sub_metering_2, type = "l", col = "red")
lines(datetime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"), bty = "n")

# Bottom right plot
plot(datetime, data$Global_reactive_power, type="l", xlab="datetime", ylab= "Global_reactive_power")

dev.off()