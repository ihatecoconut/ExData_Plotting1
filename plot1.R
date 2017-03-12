dataitself <- "household_power_consumption.txt"
project <- read.table(dataitself, sep=";", stringsAsFactors = FALSE, dec=".", header=TRUE)
projectsub <- subset(project, project$Date %in% c("1/2/2007", "2/2/2007"))
projectsub1 <- as.numeric(projectsub$Global_active_power)
png("plot1.png", width=480, height=480)
dev.cur()
hist(projectsub1, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()