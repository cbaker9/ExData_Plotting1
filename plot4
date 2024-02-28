#Libraries used:
library(readr)
library(lubridate)

#Import the dataset
household_power_consumption <- read_delim("household_power_consumption.txt", 
                                          +     ";", escape_double = FALSE, col_types = cols(Date = col_character()), 
                                          +     trim_ws = TRUE)

#Subset data to specific days
sub_data <- subset(household_power_consumption, Date == c("1/2/2007", "2/2/2007"))

#Converting and merging Date and Time
sub_data$DateTime <- strptime(paste(sub_data$Date, sub_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

# Plot all four and save .png

par(mfrow=c(2,2))

plot(sub_data$DateTime, sub_data$Global_active_power , type = "l", ylab = "Global Active Power", xlab = " ")

plot(sub_data$DateTime, sub_data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(sub_data$DateTime, sub_data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = " ", col = "black")
lines(sub_data$DateTime, sub_data$Sub_metering_2, col = 'red')
lines(sub_data$DateTime, sub_data$Sub_metering_3 , col = 'blue')
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 1, col = c("Black", "Red", "Blue"))

plot(sub_data$DateTime, sub_data$Global_reactive_power, xlab = "datetime", ylab = "Global Reactive Power", type = "l")

dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()



