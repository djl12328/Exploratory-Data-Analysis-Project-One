data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

globalActivePower <- as.numeric(subsetData$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()