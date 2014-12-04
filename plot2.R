# household<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
# household$Date<-as.Date(household$Date, "%d/%m/%Y")
# household_used<-household[household$Date=="2007-02-01" | household$Date=="2007-02-02",] 
# head(household_used)
# write.table(household_used, "project1.csv")

Sys.setlocale("LC_TIME", "English")
dataset<-read.table("project1.csv")
head(dataset)
dataset$datetime<-as.POSIXct(paste(dataset$Date, dataset$Time), format="%Y-%m-%d %H:%M:%S")
plot(dataset$datetime, dataset$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
