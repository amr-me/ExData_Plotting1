cData <- read.table("./new_data.txt", header = T, sep = ";")
png("plot4.png", width = 480, height = 480, bg = "transparent")
# split into 4
par(mfrow = c(2,2))

# plot 1
plot(days, cData$Global_active_power, type = "l" , xaxt = "n", xlab = "", ylab = "Global Active Power")
axis(1, at= 1, labels="Thu")
axis(1, at= ((2*max(days))/4), labels="Fri")
axis(1, at= max(days), labels="Sat")

# plot 2
plot(days, cData$Voltage, type = "l" , xaxt = "n", xlab = "datetime", ylab = "Voltage")
axis(1, at= 1, labels="Thu")
axis(1, at= ((2*max(days))/4), labels="Fri")
axis(1, at= max(days), labels="Sat")

# plot 3
plot(days, cData$Sub_metering_1, type = "l" , xaxt = "n", xlab = "", ylab = "Energy sub metering")
lines(days, cData$Sub_metering_2, type = "l" , xaxt = "n", xlab = "", ylab = "Energy sub metering", col = "red")
lines(days, cData$Sub_metering_3, type = "l" , xaxt = "n", xlab = "", ylab = "Energy sub metering", col = "blue")

axis(1, at= 1, labels="Thu")
axis(1, at= ((2*max(days))/4), labels="Fri")
axis(1, at= max(days), labels="Sat")
legend("topright", bty = "n",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))

# plot 4 Global_reactive_power
plot(days, cData$Global_reactive_power, type = "l" , xaxt = "n", xlab = "datetime", ylab = "Global_reactive_power")
axis(1, at= 1, labels="Thu")
axis(1, at= ((2*max(days))/4), labels="Fri")
axis(1, at= max(days), labels="Sat")

dev.off()