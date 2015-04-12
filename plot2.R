cData <- read.table("./new_data.txt", header = T, sep = ";")
# open dev
#png("plot1.png", width = 480, height = 480, bg = "transparent")
days <- 1:dim(cData)[1]
#plot(par("Thu", "Fri", "Sat"), cData$Global_active_power, type = "l")
#dev.off()
png("plot2.png", width = 480, height = 480, bg = "transparent")
plot(days, cData$Global_active_power, type = "l" , xaxt = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
axis(1, at= 1, labels="Thu")
axis(1, at= ((2*max(days))/4), labels="Fri")
axis(1, at= max(days), labels="Sat")
dev.off()
