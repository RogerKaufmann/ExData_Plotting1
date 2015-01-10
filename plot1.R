plot1 <- function(location="plot1.png") {
    source("read_data.R")
    data <- read_data("data\\household_power_consumption.txt")
    png(filename=location, width=480, height=480) 
    hist(data$Global_active_power, main="Global Active Power", 
         col="red", xlab="Global Active Power (kilowatts)")
    invisible(dev.off() )
}
