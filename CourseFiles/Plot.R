# File:   Plot.R
# Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

head(iris)

# PLOT DATA WITH PLOT() ####################################
3**44
?plot  # Help for plot()\
plot(1:10, 
     col='#00E0FF',
     cex = 3,
     pch=11,
     main="My Graph",
     xlab="The x-axis", 
     ylab="The y axis")
plot(iris$Species)  # Categorical variable
plot(iris$Petal.Length)  # Quantitative variable
plot(iris$Species, iris$Petal.Width)  # Cat x quant
plot(iris$Petal.Length, iris$Petal.Width)  # Quant pair
plot(iris)  # Entire data frame

# Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
  col = "#cc0000",  # Hex code for datalab.cc red
  pch = 19,         # Use solid circles for points
  main = "Iris: Petal Length vs. Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width")

# PLOT FORMULAS WITH PLOT() ################################

plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)

# Formula plot with options
plot(dnorm, -3, +3,
  col = "#cc0000",
  lwd = 5,
  main = "Standard Normal Distribution",
  xlab = "z-scores",
  ylab = "Density")

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
