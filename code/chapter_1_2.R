library(tidyverse)
library(ggplot2)
library(dplyr)

# Titanic data frame

plot.data <- data.frame(Titanic) %>%
  group_by(Class) %>%
  summarize('Total Freq' = sum(Freq))

ggplot(plot.data, aes(x = Class, y = `Total Freq`)) +
  geom_bar(stat = "identity") +
  labs(title = "geom_bar") +
  theme_minimal()

# ********************** #
set.seed(50)
