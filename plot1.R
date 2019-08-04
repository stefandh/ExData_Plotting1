# Loading the data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", na.strings = "?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]

# Plot 1 code
png("plot1.png", height = 480, width = 480)
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()