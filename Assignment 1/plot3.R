## Let us make the third requried plot, and save it in "plot3.png"
png(filename="plot3.png",width=480,height=480)
plot(Data$FullTime, as.numeric(as.character(Data$Sub_metering_1)),type="l",xlab="",ylab="Energy sub metering")
lines(Data$FullTime, as.numeric(as.character(Data$Sub_metering_2)), col="red")
lines(Data$FullTime, as.numeric(as.character(Data$Sub_metering_3)), col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
