#Script to generate the third graph of Household data
#Read the data, assigning the ? to the NA

household <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")

#Subset only the two days needed

hh <- household[with(household, Date == "1/2/2007" | Date == "2/2/2007"), ]
hh2 <- hh
#Remove unused household

rm(household)
rm(hh)

#Change class of date and time
hh2$Date <- as.character(hh2$Date)
hh2$Time <- as.character(hh2$Time)

#Make a column with the DateTime data

hh2$DateTime <- as.POSIXct(paste(hh2$Date, hh2$Time), format="%d/%m/%Y %H:%M:%S")

#Sub metering, to add transparency add bg = "transparent" in png(file="plot3.png", bg = "transparent")
png(file = "plot3.png")
plot(hh2$DateTime, hh2$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n")
#Draw Lines with diferent colrs
lines(hh2$DateTime, hh2$Sub_metering_1)
lines(hh2$DateTime, hh2$Sub_metering_2, col="red")
lines(hh2$DateTime, hh2$Sub_metering_3, col="blue")
#Draw legend
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

#Print on screen
plot(hh2$DateTime, hh2$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n")
#Draw Lines with diferent colrs
lines(hh2$DateTime, hh2$Sub_metering_1)
lines(hh2$DateTime, hh2$Sub_metering_2, col="red")
lines(hh2$DateTime, hh2$Sub_metering_3, col="blue")
#Draw legend
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

