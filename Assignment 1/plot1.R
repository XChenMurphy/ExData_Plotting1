## Get to the directory where the data set is.
setwd("./projects/Exploratory Data Analysis/assignment 1")
## Read the data set and store it in the dataframe data1. 
data1 <- read.table("household_power_consumption.txt",sep=";",head=TRUE)
## Find what the dimension of data1 is and read the first few rows of the dataframe.
dim(data1)
head(data1)
## Change the class of Date in the dataframe data1 to be "Date". 
library(lubridate)
data1$Date <- dmy(data1$Date)
data1$Date <- as.Date(data1$Date)
## Take subset where it contains only the date "2007-02-01" or "2007-02-02" and save it in the dataframe called DATA
Data <- subset(data1, Date == "2007-02-01" | Date =="2007-02-02")
## Find what the dimension of DATA is and read the first few rows of DATA.
dim(Data)
head(Data)
## Make the required plot, and save it in the file "plot1.png". 
png(filename="plot1.png",width=480,height=480)
hist(as.numeric(as.character(Data$Global_active_power)), ylim=c(0,1200),xlab="Global Active Power (kilowatts)",main="Global Active Power", col="red")
dev.off()