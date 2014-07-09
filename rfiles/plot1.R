#Loading data
source('rfiles/data_loader.R')

# PNG device
png(filename='plot1.png')

#create plot
hist(energy_data$Global_active_power, main='Global Active Power',   xlab='Global Active Power (kilowatts)', col='red')

#Closing device
dev.off()


