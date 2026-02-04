# **********************Housing Prices Inferential Analysis********************************************

# Load required libraries
library(dplyr)
library(ggplot2)
library(readr)


# Load the dataset
housing <- read.csv("C:/Users/HITECH COMPUTERS/OneDrive/Desktop/Housing_Prices_Inferential_Analysis/housing.csv")

# Inspect
head(housing)
str(housing)
summary(housing)

# **********************Descriptive statistics*********************************************************

# Summary of main variables

summary(housing$MEDV)   # median house price
summary(housing$RM)     # average number of rooms
summary(housing$LSTAT)  # % lower status population
summary(housing$PTRATIO) # pupil-teacher ratio



# Group PTRATIO (for readable boxplot)
housing$PTRATIO_Group <- cut(
  housing$PTRATIO,
  breaks = c(10, 15, 18, 21, 25),
  labels = c("Low", "Medium", "High", "Very High")
)


# Histogram of house price

# Histogram of house prices
print(
  ggplot(housing, aes(MEDV)) +
    geom_histogram(bins = 30, fill="skyblue", color='black') +
    labs(title="Distribution of House Prices", x="Price (MEDV)", y="Count")
)

# Scatter plot - Rooms vs Price
print(
  ggplot(housing, aes(x=RM, y=MEDV)) +
    geom_point(color="blue") +
    geom_smooth(method="lm", se=FALSE, color="red") +
    labs(title="House Price vs Number of Rooms", x="Average Rooms", y="Median Price")
)

# Scatter plot - % lower status vs Price
print(
  ggplot(housing, aes(x=LSTAT, y=MEDV)) +
    geom_point(color="purple") +
    geom_smooth(method="lm", se=FALSE, color="red") +
    labs(title="% Lower Status vs House Price", x="% Lower Status Population", y="Median Price")
)

# Boxplot - PTRATIO vs Price
print(
  ggplot(housing, aes(x=factor(PTRATIO), y=MEDV)) +
    geom_boxplot(fill="lightgreen") +
    labs(title="House Price vs Pupil-Teacher Ratio", x="PTRATIO", y="Median Price")
)



# **********************Inferential Statistics*********************************************************

# Correlation between rooms and price
cor_test1 <- cor.test(housing$RM, housing$MEDV)
cor_test1

# Correlation between % Lower Status vs Price
cor_test2 <- cor.test(housing$LSTAT, housing$MEDV)
cor_test2



# Simple linear regression: MEDV~RM  

model1 <- lm(MEDV ~ RM, data=housing)
summary(model1)

# Multiple regression: MEDV ~ RM + LAST + PTRATIO
model2 <- lm(MEDV ~ RM + LSTAT + PTRATIO, data=housing)

# View regression summary
summary(model2)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(model2)
par(mfrow = c(1,1)) # Reset layout

# ************************End of Script*************************************************************