# Since I have enough memory available I read all at once
read_data <- function(file_path) {
    # define the column types
    df <- read.csv(file_path, header=TRUE, sep=";", na.strings = "?")
    # datetime for plot 2
    df$datetime <- strptime(paste(df$Date, df$Time, sep=" "),
                            format="%d/%m/%Y %H:%M:%S")
    df$Date <- as.Date(df$Date , "%d/%m/%Y")
    df$Time <- strptime(df$Time, format="%H:%M:%S")
    # Subsetting
    df <- subset(df, df$Date == '2007-02-01' | df$Date == '2007-02-02')

    df
}