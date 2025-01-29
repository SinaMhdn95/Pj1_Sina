#Load the necessary packages
library(dplyr)
library(ggplot2)


#I want to make a scatter plot of horsepower (hp) and miles per gallon (mpg) with
#a linear regression line

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "darkgreen", size = 2) +
  geom_smooth(method = "lm", color = "orange", se = FALSE) +
  geom_hline(yintercept = 0, color = "black", size = 0.5) +  # add X-axis
  geom_vline(xintercept = 0, color = "black", size = 0.5) +  # add Y-axis
  labs(
    title = "Horsepower vs MPG",
    x = "Horsepower (hp)",
    y = "Miles Per Gallon (mpg)"
  ) +
  theme_minimal() +
  theme ()
