#Load the mtcars data
data("mtcars")
head(mtcars)

#Load the data to cars
Cars <- mtcars[]

str(mtcars)

#Data exploration
summary(mtcars)

#correlation analysis
cr <- cor(mtcars)
cr
corrplot(cr, type = "lower")

#plotting the graph
plot(mtcars)
pairs(~ mpg + disp + drat + wt, data = mtcars, main = "Simple Scatterplot Matrix")

#Finding the best fit for the model
fit <- lm(mpg~ cyl + wt, data = mtcars)
summary(fit)

#Durbinwatson Test
durbin.watson(fit)

hist(residuals(fit))
plot(mtcars$mpg, residuals(fit))
par(mfrow = c(2, 2))
plot(fit)
