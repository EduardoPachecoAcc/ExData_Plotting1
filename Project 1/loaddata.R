
data <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE)
#data$Date <- as.Date(data$Date)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
subsetdata <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
