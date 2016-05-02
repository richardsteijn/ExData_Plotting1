 
plot3 <- function(x) { 
  plot(x$Time, x$Sub_metering_1 ,type='l', xlab='', ylab='Energy sub metering', col='black')
  lines(x$Time, x$Sub_metering_2 ,type='l', xlab='', ylab='Energy sub metering', col='red')
  lines(x$Time, x$Sub_metering_3 ,type='l', xlab='', ylab='Energy sub metering', col='blue')
  
  
  legend('topright', # places a legend at the appropriate place c("Health","Defense"), # puts text in the legend
        
        lty=c(1,1,1), # gives the legend appropriate symbols (lines)
        
        lwd=c(2.5,2.5,2.5), col=c('black','red', 'blue'),
        
        legend = c('sub_metering_1', 'sub_metering_2', 'sub_metering_3')
        ) # gives the legend lines the correct color and width
  
  dev.copy(png, filename="C:/R/Work/Course4/Week1/plot3.png");
  dev.off ();
  }

source('C:/R/Work/Course4/Week1/load_data.R') #loads the data and assigns it to x   
plot3(x)