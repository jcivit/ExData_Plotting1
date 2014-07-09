#Loading data
source('rfiles/data_loader.R')

#PNG device
png(filename='plot4.png')

#Create plots 2x2 plots grid
par(mfrow=c(2,2))

#Top left corner
plot(energy_data$DateTime, energy_data$Global_active_power,type='l', ylab='Global Active Power', xlab='')

#Top right corner
plot(energy_data$DateTime, energy_data$Voltage, type='l',xlab='datetime', ylab='Voltage')

#Bottom left corner
plot(energy_data$DateTime, energy_data$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(energy_data$DateTime, energy_data$Sub_metering_2, col='red')
lines(energy_data$DateTime, energy_data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), bty='n',lty='solid')

#Bottom right corner
plot(energy_data$DateTime, energy_data$Global_reactive_power, type='l',xlab='datetime', ylab='Global_reactive_power')

#Close device
dev.off()
