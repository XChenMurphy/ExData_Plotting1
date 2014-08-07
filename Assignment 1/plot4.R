## Let us make the fourth required plot, and store it in "plot4.png".
par(mfrow=c(2,2))
png(filename="plot4.png",width=480,height=480)
with(Data, {
        plot(FullTime, as.numeric(as.character(Global_active_power)), xlab="", ylab="Global Active Power (kilowatts)",type="l")
        plot(FullTime, as.numeric(as.character(Voltage)),xlab="datetime",ylab="Voltage",type="l")
        plot(FullTime, as.numeric(as.character(Sub_metering_1)),type="l",xlab="",ylab="Energy sub metering")
        lines(FullTime, as.numeric(as.character(Sub_metering_2)), col="red")
        lines(FullTime, as.numeric(as.character(Sub_metering_3)), col="blue")
        legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        plot(FullTime, as.numeric(as.character(Global_reactive_power)),xlab="datetime",ylab="Global_reactive_power",type="l")
})
def.off()