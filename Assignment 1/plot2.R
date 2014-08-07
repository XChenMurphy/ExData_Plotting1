## Recall that we have saved the data for the dates "2007-02-01" or "2007-02-02" 
## in the dataframe DATA. We have also changed the format of "period"

## Let us construct a column in the dataframe DATA called "FullTime", which stores both
## the Date and Time for each row

for (i in 1:nrow(Data)){
        Data$FullTime[i] <- paste(Data$Date[i], Data$Time[i], collapse=" ")
}
## We change the class of the column FullTime to the 
head(Data)
Data$FullTime <- ymd_hms(Data$FullTime)
class(Data$FullTime)
## Now we make the required plot and save it in "plot2.png"
png(filename="plot2.png",width=480,height=480)
with(Data, plot(FullTime, as.numeric(as.character(Global_active_power)), xlab="", ylab="Global Active Power (kilowatts)",type="l"))
dev.off()
