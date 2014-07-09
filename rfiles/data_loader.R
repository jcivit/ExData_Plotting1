# Save working data for the first time
origin <-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
raw_data_file_zip<- 'energy_data.zip'
raw_data_file<- 'household_power_consumption.txt'
rds_file<- 'processed_energy_data.rds'

# will produce and RDS filter for later access and simplicity

if (!file.exists(rds_file)) {
    download.file(origin, method='curl', destfile=raw_data_file_zip)
    unzip(raw_data_file_zip)
    
    # Read into a table
    energy_data <- read.table(raw_data_file, sep=';', na.strings='?',header=TRUE, colClasses=c(rep('character', 2), rep('numeric', 7)))
    
    # Convert time
    energy_data$DateTime <- strptime(paste(energy_data$Date,energy_data$Time),format="%d/%m/%Y%H:%M:%S")
    energy_data$Date <- as.Date(energy_data$Date,format="%d/%m/%Y")

    # Simplify dataset
    energy_data<-energy_data[energy_data$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]
    
    # Save file
    saveRDS(energy_data, file=rds_file)
} else {
    energy_data <- readRDS(rds_file)
}
