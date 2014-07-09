# Loading data
source('rfiles/data_loader.R')

# PNG device
png(filename='plot2.png')

# create plot
plot(energy_data$DateTime, energy_data$Global_active_power,ylab='Global Active Power (kilowatts)', type='l',xlab='')

# Turn off device
dev.off()
