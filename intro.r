library(readxl)
library(ggplot2)

data <- read_excel("files/foodexp.xls")

linear_model <- lm(FOODEXP ~ INCOME, data = data)

print(summary(linear_model))

ggplot(data, aes(INCOME, FOODEXP)) +
  geom_point() +
  geom_smooth(method = "lm")
