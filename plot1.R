
setwd("C:\\Users\\Honey\\Documents\\Ningdata19\\Explore")
library("data.table")

par(mar=c(5,5,2,2))


file <- ("household_power_consumption.txt")


data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


ActivePower <- as.numeric(dataSubset$Global_active_power)


png("plot1.png", width=480, height=480) 
hist(ActivePower, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()