#Script to generate the second graph of Household data
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

#Do scatter plot with lines of Global active power vs date time
png(file = "plot2.png", bg = "transparent")
#Generate plot, without writing adding labels
plot(hh2$DateTime, hh2$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
#Draw graph
lines(hh2$DateTime, hh2$Global_active_power)
dev.off()
