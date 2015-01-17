library(ggplot2)

proc_data <- function() {
# read data
activity_raw <- read.csv("activity.csv")

# Process data
activity_proc <- activity_raw[complete.cases(activity_raw),]
activity_proc$date <- as.Date(activity_proc$date)

activity_proc
}

part1 <- function() {
# Calculate the daily mean and median on the processed data
daily_total_steps <- tapply(activity_proc$steps,activity_proc$date, sum)
max_steps_in_day <- max(daily_total_steps)

qplot(daily_total_steps, 
      geom = "histogram",
      binwidth = max_steps_in_day/32,
      xlab = "Daily Step Total",
      ylab = "Count",
      main = "Frequency of Daily Step Totals")

mean_daily_total_steps <- mean(daily_total_steps)
median_daily_total_steps <- median(daily_total_steps)
}

part2 <- function() {
    activity_proc <- proc_data()
    
}