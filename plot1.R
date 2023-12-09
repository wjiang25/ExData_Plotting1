library(tidyverse)
if (!exists("newdata")){
    zip_url <- zip_url<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(zip_url,"datafile.zip",mode="wb")
    rawdata <- read.csv(unzip("datafile.zip"),sep=";")
    data<-rawdata
    data[,1]<-as.Date(data[,1],tryFormats = "%d/%m/%Y")
    d1<-as.Date("20070201","%Y%m%d")
    d2<-as.Date("20070202","%Y%m%d")
    newdata<-subset(data,data$Date>=d1&data$Date<=d2)
    newdata$Time <- as.POSIXct(strptime(paste(as.character(newdata$Date),newdata$Time),"%Y-%m-%d %H:%M:%S"))
    newdata<-newdata%>%mutate_at(c(3:9),as.double)
}
 

png("plot1.png",width=480,height=480)
with(newdata, hist(Global_active_power,xlab="Global Active Power (kilowatts)",ylab="Frequency",col="red",main="Global Active Power"))
dev.off()
