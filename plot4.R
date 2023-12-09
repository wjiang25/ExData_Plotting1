# Please make sure to run plot1.R first

png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(newdata, plot(Time,Global_active_power,type="l",xaxt="n",xlab="",ylab="Global Active Power"))
with(newdata, axis(1,at=c(min(Time),median(Time),max(Time)),labels=c("Thu","Fri","Sat")))

with(newdata, plot(Time,Voltage,type="l",xaxt="n",xlab="datetime",ylab="Voltage"))
with(newdata, axis(1,at=c(min(Time),median(Time),max(Time)),labels=c("Thu","Fri","Sat")))

with(newdata, plot(Time,Sub_metering_1,type="l",xaxt="n",col="black",ylab="Energy sub metering",xlab=""))
with(newdata, lines(Time,Sub_metering_2,type="l",xaxt="n",col="red"))
with(newdata, lines(Time,Sub_metering_3,type="l",xaxt="n",col="blue"))
with(newdata,axis(1,at=c(min(Time),median(Time),max(Time)),labels=c("Thu","Fri","Sat")))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty = "n")

with(newdata, plot(Time,Global_reactive_power,type="l",xaxt="n",xlab="datetime"))
with(newdata,axis(1,at=c(min(Time),median(Time),max(Time)),labels=c("Thu","Fri","Sat")))
dev.off()