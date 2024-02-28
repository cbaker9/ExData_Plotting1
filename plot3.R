library(readr)
library(lubridate)

# Plot2

household_power_consumption <- read_delim("household_power_consumption.txt", 
                                          +     ";", escape_double = FALSE, col_types = cols(Date = col_character()), 
                                          +     trim_ws = TRUE)

sub_data <- subset(household_power_consumption, Date == c("1/2/2007", "2/2/2007"))

sub_data$DateTime <- strptime(paste(sub_data$Date, sub_data$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
