
 
plot1 <- function(x) { 
  hist(x$Global_active_power, col = 'red', main='Global Active Power' ,xlab = 'Global active power (kilowatts)')  
  dev.copy(png, filename="C:/R/Work/Course4/Week1/plot1.png");
  dev.off ();
  }

source('C:/R/Work/Course4/Week1/load_data.R') #loads the data and assigns it to x   
plot1(x)