
plot4 <- function(x) { 
  par(mfrow = c(2, 2)) 
  
  plot(x$Time, x$Global_active_power, type="l", xlab = "", ylab = 'Global active power (kilowatts)', col='black')
  
  plot(x$Time, x$Voltage, type="l", xlab = "datetime", ylab = 'Voltage', col='black')
  
  plot(x$Time, x$Sub_metering_1 ,type='l', xlab='', ylab='Energy sub metering', col='black')
  lines(x$Time, x$Sub_metering_2 ,type='l', xlab='', ylab='Energy sub metering', col='red')
  lines(x$Time, x$Sub_metering_3 ,type='l', xlab='', ylab='Energy sub metering', col='blue')
  
  
  legend('topright',cex =0.7,  lty=c(1,1,1), lwd=c(1,1,1), col=c('black','red', 'blue'),  legend = c('sub_metering_1', 'sub_metering_2', 'sub_metering_3'))  
  
  plot(x$Time, x$Global_reactive_power, type="l", xlab = "datetime", ylab = 'Global reactive power', col='black')
  
  dev.copy(png, filename="C:/R/Work/Course4/Week1/plot4.png");
  dev.off ();
  }

source('C:/R/Work/Course4/Week1/load_data.R') #loads the data and assigns it to x   
plot4(x)