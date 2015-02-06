#Script to generate the fourth graph of Household data
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

#Fourth plot, makes four plots in one
png(file = "plot4.png")
#Uses par to establish four plots, and arrange margins
par(mfcol = c(2,2), mar=c(5,4,2,2))
#First plot
plot(hh2$DateTime, hh2$Global_active_power, type="n", ylab="Global Active Power", xlab="")
lines(hh2$DateTime, hh2$Global_active_power)

#Second plot
plot(hh2$DateTime, hh2$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n")
#Draw Lines with diferent colors
lines(hh2$DateTime, hh2$Sub_metering_1)
lines(hh2$DateTime, hh2$Sub_metering_2, col="red")
lines(hh2$DateTime, hh2$Sub_metering_3, col="blue")
#Draw legend without box
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")

#Third plot
plot(hh2$DateTime, hh2$Voltage, ylab="Voltage", xlab="datetime", type="n")
lines(hh2$DateTime, hh2$Voltage)

#Fourth plot
plot(hh2$DateTime, hh2$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="n")
lines(hh2$DateTime, hh2$Global_reactive_power)

#Closes device
dev.off()
