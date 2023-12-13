library(readr)

#Import data - NOTE: "..." in file path to hide personal information
household_power_consumption <- read_delim(".../household_power_consumption.txt", ";", escape_double = FALSE, trim_ws = TRUE)

#Subset data to Dates "1/2/2007" and "2/2/2007"
subset_data <- subset(household_power_consumption, Date == c("1/2/2007", "2/2/2007"))
