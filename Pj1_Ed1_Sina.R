#Load the necessary packages
library(dplyr)
library(ggplot2)

##Import data
Data1 <- data("mtcars")

#make a copy of raw data
Data2 <- Data1

#I want to make a scatter plot of horsepower (hp) and miles per gallon (mpg) with
#a linear regression line

ggplot(Data2, aes(x = hp, y = mpg)) +
  geom_point(color = "darkgreen", size = 2) +
  geom_smooth(method = "lm", color = "orange", se = FALSE) +
  labs(
    title = "Horsepower vs MPG",
    x = "Horsepower (hp)",
    y = "Miles Per Gallon (mpg)"
  ) +
  theme_minimal() +
  theme ()
