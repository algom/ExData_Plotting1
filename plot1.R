#Script to generate the first graph of Household data
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

#Do histogram of Global active power
png(file = "plot1.png")
hist(hh2$Global_active_power, col="red", ylim=c(0,1300), xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
