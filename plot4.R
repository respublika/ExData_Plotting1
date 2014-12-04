# household<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
# household$Date<-as.Date(household$Date, "%d/%m/%Y")
# household_used<-household[household$Date=="2007-02-01" | household$Date=="2007-02-02",] 
# head(household_used)
# write.table(household_used, "project1.csv")


Sys.setlocale("LC_TIME", "English")
dataset<-read.table("project1.csv")
head(dataset)
dataset$datetime<-as.POSIXct(paste(dataset$Date, dataset$Time), format="%Y-%m-%d %H:%M:%S")
par(mfrow=c(2, 2), mar=c(4, 4, 2, 2))
plot(dataset$datetime, dataset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(dataset$datetime, dataset$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(dataset$datetime, dataset$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dataset$datetime, dataset$Sub_metering_2, col="red", type="l")
lines(dataset$datetime, dataset$Sub_metering_3, col="blue", type="l")
legend("topright", lwd=2, cex=0.5, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(dataset$datetime, dataset$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()


