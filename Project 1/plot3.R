subsetdata$Sub_metering_1<- as.numeric(levels(subsetdata$Sub_metering_1))[subsetdata$Sub_metering_1]
subsetdata$Sub_metering_2<- as.numeric(subsetdata$Sub_metering_2)
subsetdata$Sub_metering_3<- as.numeric(subsetdata$Sub_metering_3)
png(filename = "./github/ExData_Plotting1/Project 1/plot3.png")
plot(subsetdata$DateTime, subsetdata$Sub_metering_1, type= "l", ylab="Energy Sub metering", xlab="")
lines(subsetdata$DateTime, subsetdata$Sub_metering_2, col="red")
lines(subsetdata$DateTime, subsetdata$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = 1:3, lty=1, lwd = 2.5)
dev.off()