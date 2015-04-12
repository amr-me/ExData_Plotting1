# load data

cData <- read.table("./new_data.txt", header = T, sep = ";")
# open dev
png("plot1.png", width = 480, height = 480, bg = "transparent")
hist(cData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
# close dev
dev.off()

