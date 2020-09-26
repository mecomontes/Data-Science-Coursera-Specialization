# Importing and processing data
setwd('/home/meco/Desktop/Coursera/datasciencecoursera/5.Reproducible Research')
data <- read.csv('C:/Users/andre/Desktop/CURSO DATA SCIENCE JH/Reproducible Research/Project 1/activity.csv')
data <- na.omit(data) # Omit na values in the dataset
as.Date(data$date)

# Summary data
summary(data)

# Histogram steps per day
library(dplyr)
dates <- group_by(data, date)
steps_per_day <- as.data.frame(summarise(dates, sum(steps), mean(steps), median(steps)))
colnames(steps_per_day) <- c('date', 'sum_steps', 'mean_steps', 'median_steps')

qplot(sum_steps, data = steps_per_day, main = 'Steps per day')

# Mean and median per day
print(steps_per_day)

# Time series 
ggplot(data = steps_per_day, aes(x = date, y = mean_steps)) + geom_line(color = 'red', size = 2)