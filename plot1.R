# household<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
# household$Date<-as.Date(household$Date, "%d/%m/%Y")
# household_used<-household[household$Date=="2007-02-01" | household$Date=="2007-02-02",] 
# head(household_used)
# write.table(household_used, "project1.csv")

dataset<-read.table("project1.csv")
head(dataset)
hist(dataset$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()