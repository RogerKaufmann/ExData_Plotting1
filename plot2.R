plot2 <- function(location="plot2.png") {
    source("read_data.R")
    data <- read_data("data\\household_power_consumption.txt")
    Sys.setlocale(category = "LC_TIME", locale = "C")
    png(filename=location, width=480, height=480) 
    plot(data$datetime, data$Global_active_power, type="l",
         xlab="", ylab="Global Active Power (kilowatts)")
    invisible(dev.off() )
}