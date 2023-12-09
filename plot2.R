# Please make sure to run plot1.R first

png("plot2.png",width=480,height=480)
with(newdata, plot(Time,Global_active_power,type="l",xaxt="n",xlab="",ylab="Global Active Power (kilowatts)"))
with(newdata,axis(1,at=c(min(Time),median(Time),max(Time)),labels=c("Thu","Fri","Sat")))
dev.off()

