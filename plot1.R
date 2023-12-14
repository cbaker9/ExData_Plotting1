library(readr)

# Import data - NOTE: "..." in file path to hide personal information
household_power_consumption <- read_delim(".../household_power_consumption.txt", ";", escape_double = FALSE, trim_ws = TRUE)

# Subset data to Dates "2/1/2007" and "2/2/2007"
subset_data <- subset(household_power_consumption, Date == c("2/1/2007", "2/2/2007"))

# Plot the histogram
hist(subset_data$Global_active_power, col = "red" , main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

# Save as .png file
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
