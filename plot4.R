plot4 <- function(location="plot4.png") {
    source("read_data.R")
    data <- read_data("data\\household_power_consumption.txt")
    Sys.setlocale(category = "LC_TIME", locale = "C")
    
    png(filename=location, width=480, height=480)
    par(mfrow = c(2, 2))
    with(data, {
        plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        plot(datetime, Voltage, type="l", ylab="Voltage")
        plot(data$datetime, data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
        lines(data$datetime, data$Sub_metering_1, col="black")
        lines(data$datetime, data$Sub_metering_2, col="red")
        lines(data$datetime, data$Sub_metering_3, col="blue")
        legend("topright", bty = "n", col = c("black", "red", "blue"), lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        plot(datetime, Global_reactive_power, type="l")
        })
    invisible(dev.off() )
}