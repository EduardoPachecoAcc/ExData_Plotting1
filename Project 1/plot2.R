subsetdata$Global_active_power<- as.numeric(levels(subsetdata$Global_active_power))[subsetdata$Global_active_power]
subsetdata <- cbind(subsetdata,as.POSIXct(paste(subsetdata$Date, subsetdata$Time), format="%Y-%m-%d %H:%M:%S"))
colnames(subsetdata)[dim(subsetdata)[2]] <- "DateTime"
png(filename = "./github/ExData_Plotting1/Project 1/plot1.png")
plot(subsetdata$DateTime, subsetdata$Global_active_power, type= "l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off ()