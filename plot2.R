cData <- read.table("./new_data.txt", header = T, sep = ";")
# open dev
#png("plot1.png", width = 480, height = 480, bg = "transparent")
days <- 1:dim(cData)[1]
#plot(par("Thu", "Fri", "Sat"), cData$Global_active_power, type = "l")
#dev.off()
plot(days, cData$Global_active_power, type = "l" , xaxt = "n", xlab = c('Thu', 'Fri', 'Sat'))