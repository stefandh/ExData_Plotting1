# Loading the data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", na.strings = "?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]

# Plot 2 code
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", height = 480, width = 480)
plot(datetime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()