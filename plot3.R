plot3 <- function(location="plot3.png") {
    source("read_data.R")
    data <- read_data("data\\household_power_consumption.txt")
    Sys.setlocale(category = "LC_TIME", locale = "C")
    png(filename=location, width=480, height=480) 
    plot(data$datetime, data$Sub_metering_1, type="l",
         xlab="", ylab="Energy sub metering", col="black")
    lines(data$datetime, data$Sub_metering_2, col="red")
	lines(data$datetime, data$Sub_metering_3, col="blue")
	legend("topright", col = c("black", "red", "blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    invisible(dev.off() )
}