load_data <- function() { 
  filename <- "C:/R/Work/Course4/Week1/household_power_consumption.txt"
  ## Read outcome data
  data <- read.csv(filename, colClasses = "character" , sep = ';')
  
  #some filtering
  data <- subset(data, Date=='1/2/2007' | Date=='2/2/2007' )
  
  #return the loaded data frame 
  #some type casting
  cols <- names(data)
  cols <- cols[!cols %in% c("Time", "Date")]  #all columns we want to cast to numeric  
  data2 <- lapply(data[cols],  as.numeric)
  
  data2$Time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %T") #datetime
  data2$Date <- as.Date(data$Date, format="%d/%m/%Y") #date
  
  data2
}
 
  
x <- load_data()
 