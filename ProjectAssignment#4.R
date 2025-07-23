# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyverse)
library(readxl)

all_food <- data.frame(
  "Period" = c("Month-to-month", "Year-over-year", "Annual", "Annual", "Annual", "20-year historical average"),
  "Change" = c(0.1, 8.5, 3.4, 3.9, 9.9, 2.8),
  "Year" = c(NA, 2023, 2020, 2021, 2022, NA)
)

hist(all_food$Change, main = "Histogram of Annual Changes in CPI for All Food Items")

ggplot(all_food, aes(x = Year, y = Change, group = 1)) + 
  geom_line(aes(linetype = Period)) + 
  scale_linetype_manual(values = c("solid", "dashed", "dashed", "dashed", "dashed", "dotted")) +
  labs(title = "Annual Changes in CPI for All Food Items", 
       x = "Year", y = "Percent Change") +
  theme_bw()




#2nd quest

egg_prices <- data.frame(
  item = "Eggs",
  month_to_month = c(-10.9),
  year_over_year = c(36.0),
  year_to_date_avg = c(27.2),
  annual_2020 = c(4.3),
  annual_2021 = c(4.5),
  annual_2022 = c(32.2),
  historical_avg = c(4.7)
)



# Create a data frame
data <- data.frame(
  'Category' = c('Eggs', 'All food'),
  'Feb-Mar 2023' = c(-10.9, 0.1),
  'Mar 2022 - Mar 2023' = c(36.0, 8.5),
  'Avg. 2023 YTD' = c(27.2, 9.9),
  'Annual 2020' = c(4.3, 3.4),
  'Annual 2021' = c(4.5, 3.9),
  'Annual 2022' = c(32.2, 2.8),
  '20-yr hist avg (2003-2022)' = c(4.7, 2.8)
)

# Select the relevant columns for the bar chart
df <- data[, c(1, 2, 3, 7)]

# Convert the data to long format
library(tidyr)
df_long <- pivot_longer(df, cols = 2:4, names_to = 'Time period', values_to = 'Change')

# Create a bar chart
library(ggplot2)
ggplot(df_long, aes(x = Category, y = Change, fill = `Time period`)) +
  geom_bar(stat = 'identity', position = position_dodge()) +
  theme_minimal() +
  labs(x = NULL, y = 'Percent change', fill = NULL) +
  scale_fill_manual(values = c('#1f77b4', '#ff7f0e', '#2ca02c')) +
  ggtitle('CCConsumer Price Index of Eggs vs. All Food') +
  theme(plot.title = element_text(hjust = 0.5, size = 14),
        axis.text.x = element_text(angle = 45, hjust = 1))






# Set the data
lower <- 5.1
mid <- 17.8
upper <- 32.9

# Create a vector with the data and the labels
values <- c(lower, mid, upper)
labels <- c("Lower", "Mid", "Upper")

# Create the bar chart
barplot(values, names.arg = labels, ylim = c(0, max(values) + 5),
        ylab = "Consumer Price Index", main = "Prediction Interval for Eggs in 2023")










# create a data frame with the prediction interval data for Eggs in 2023
pi_data <- data.frame(
  item = "Eggs",
  lower = 5.1,
  mid = 17.8,
  upper = 32.9
)

# create a dot plot with error bars
ggplot(data = pi_data, aes(x = item, y = mid)) +
  geom_point() +
  geom_errorbar(aes(ymin = lower, ymax = upper)) +
  labs(x = "", y = "Consumer Price Index") +
  ggtitle("Prediction Interval for Eggs in 2023")
























#3rd quest

# Create a dataframe with the CPI data
df <- data.frame(
  month = c("2020", "2021", "2022", "YTD 2023"),
  all_food = c(3.4, 3.9, 9.9, 4.8),
  fruits_vegetables = c(1.4, 3.2, 8.5, 2.3)
)

# Create a scatterplot
plot(df$all_food, df$fruits_vegetables,
     main = "CPI for All Food vs. Fruits and Vegetables",
     xlab = "CPI for All Food",
     ylab = "CPI for Fruits and Vegetables")

# Calculate the correlation
correlation <- cor(df$all_food, df$fruits_vegetables)
print(paste("Correlation:", round(correlation, 2)))

# Perform a linear regression
model <- lm(fruits_vegetables ~ all_food, data = df)
summary(model)








# Create a dataframe with the CPI data
# Create a dataframe with the CPI data
df <- data.frame(
  all_food = c(3.4, 3.9, 9.9, 4.8),
  fruits_vegetables = c(1.4, 3.2, 8.5, 2.3)
)

# Create a correlation matrix
cor_matrix <- cor(df)
print(cor_matrix)

# Perform a linear regression
model <- lm(fruits_vegetables ~ all_food, data = df)
summary(model)







library(ggplot2)

# create data frame with CPI data
df <- data.frame(
  category = c("All Food", "Fruits and Vegetables"),
  change = c(0.1, -1.5),
  stringsAsFactors = FALSE
)

# create bar chart
ggplot(df, aes(x = category, y = change, fill = category)) +
  geom_bar(stat = "identity") +
  labs(x = "Consumer Price Index Item", y = "Month-to-Month Change",
       title = "Comparison for All Food and Fruits/Vegetables") +
  theme_minimal()





















#4th question



library(ggplot2)

# create the data frame
df <- data.frame(
  year = c(2020, 2021, 2022),
  cpi = c(6.3, 6.8, 9.6)
)

# create the plot
ggplot(df, aes(x = year, y = cpi)) +
  geom_line() +
  xlab("Year") +
  ylab("Consumer Price Index") +
  ggtitle("Change in CPI for Meats, Poultry, and Fish")






library(ggplot2)

# create the data frame
df <- data.frame(
  year = c(2020, 2021, 2022, 2023),
  yoy_change = c(NA, 6.8, 9.6, 2.4),
  prediction = c(NA, NA, 1.3, NA),
  lower = c(NA, NA, -2.1, NA),
  upper = c(NA, NA, 4.9, NA)
)

# create the line graph
ggplot(df, aes(x = year, y = yoy_change)) +
  geom_line() +
  geom_point() +
  xlab("Year") +
  ylab("Year-over-year change") +
  ggtitle("Consumer Price Index for Meats, Poultry, and Fish") +
  theme_minimal()

# create the shaded area for the prediction interval
ggplot(df, aes(x = year)) +
  geom_ribbon(aes(ymin = lower, ymax = upper), fill = "grey70") +
  geom_line(aes(y = prediction), color = "red") +
  xlab("Year") +
  ylab("Consumer Price Index") +
  ggtitle("Projected Range for 2023") +
  theme_minimal()
``






