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

# Plot the data and save .png
plot(sub_data$DateTime, sub_data$Sub_metering_1 , type = "l", col = "black", ylab = "Energy sub metering", xlab = " ")
+lines(sub_data$DateTime, sub_data$Sub_metering_2, col = 'red')
+lines(sub_data$DateTime,sub_data$Sub_metering_3 , col = 'blue')

dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()









