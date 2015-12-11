data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
extract <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
active_power <- as.numeric(extract$Global_active_power)
png("plot1.png", height=480, width=480)
hist(active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
device.off()
