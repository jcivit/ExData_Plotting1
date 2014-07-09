#Loading data
source('rfiles/data_loader.R')

#PNG device
png(filename='plot3.png')

#create plot
plot(energy_data$DateTime, energy_data$Sub_metering_1, xlab='' ,ylab='Energy sub metering',type='l')
lines(energy_data$DateTime, energy_data$Sub_metering_3, col='blue')
lines(energy_data$DateTime, energy_data$Sub_metering_2, col='red')

legend('topright', col=c('black','red','blue'),legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty='solid')

#close device
dev.off()
