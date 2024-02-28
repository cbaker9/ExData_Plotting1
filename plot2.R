#Libraries used
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
plot(sub_data$DateTime, sub_data$Global_active_power, type = "l", xlab= " ", ylab = "Global Active Power (
     
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()

)")
