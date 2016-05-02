 
plot2 <- function(x) { 
  plot(x$Time, x$Global_active_power, type="l", xlab = "", ylab = 'Global active power (kilowatts)', col='black')
  dev.copy(png, filename="C:/R/Work/Course4/Week1/plot2.png");
  dev.off ();
}

source('C:/R/Work/Course4/Week1/load_data.R') #loads the data and assigns it to x   
plot2(x)