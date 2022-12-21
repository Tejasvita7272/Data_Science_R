################ HOME WORK ########################### 19-12-2022
# iris_data <- dataset :: iris
# perform all steps on iris dataset that you have performed on airquality and e_quakes dataset

iris <- datasets::iris

# top 10 and last 10 rows
head(iris,10)
tail(iris,10)
names(iris) # name of all cols

iris[,c(1,2)] # all rows and 1st two cols
df <- iris[,-5] # exclude col. no.5
df

summary(iris[,1]) # summary statistics for col. 1

iris$Species  # display col. values

summary(iris$Species) # summary of species col.

##### summary of dataset 
summary(iris)  # summary for all cols.

######## VISUALIZATION ###########
plot(iris$Sepal.Length)
plot(iris$Sepal.Width,iris$Sepal.Length,type = "p")
plot(iris) # scatterplot
help(plot)

############ points and lines 
plot(iris$Sepal.Length, type = "p") # p: points, l: lines, b: both
plot(iris$Sepal.Length, type = "l")
plot(iris$Sepal.Length, type = "b")

plot(iris$Sepal.Length,iris$Sepal.Width,
     xlab = 'Sepal length',
     ylab = 'Sepal length',
     main = 'length',
     col = 'blue',
     type = 'l'
)

plot(iris,col='red') # plot of entire dataset - all cols

plot(iris$Sepal.Length,iris$Sepal.Width) # x axis - Sepal.Length, y axis - Sepal.Width
plot(iris$Sepal.Width,iris$Sepal.Length)  # x - Sepal.Width , y - Sepal.Length


# horizontal bar plot
barplot(iris$Sepal.Length,
        main = 'iris dataset',
        ylab = 'length',
        col = 'blue',
        horiz = T,
        axes = F)
help(barplot)

# Histogram
hist(iris$Petal.Width)
hist(iris$Petal.Width,
     main = 'iris Petal width',
     xlab = 'width',
     col = 'green')

# Single box plot
boxplot(iris$Petal.Width,
        main="Boxplot",
        col = "green",
        horizontal = T)

boxplot.stats(iris$Petal.Width)$out  #outlier values

iris$Petal.Width

# Multiple box plots 
boxplot(iris[,1:5],
        main='Multiple',
        horizontal = T,
        col = 'pink')

# margin of the grid(mar),
# no. of rows and columns(mfrow)
# whether a border is to be included(bty)
# and position of the 
# labels(las: 1 for horizontal, las: o for vertical)
# bty - box around the plot (o,n,7,L,C,U)

help(par)
par(mfrow=c(3,3),mar=c(2,5,2,1), las=0,bty="o")
plot(iris$Sepal.Length)
plot(iris$Sepal.Length,iris$Sepal.Width)
plot(iris$Sepal.Length, type ="l")
plot(iris$Sepal.Width, type="l")
plot(iris$Sepal.Length, type ="l")

barplot(iris$Petal.Length,
        main = 'Iris dataset',
        xlab = 'Length',
        col = 'green',
        horiz = TRUE)
hist(iris$Petal.Length)
boxplot(iris$Petal.Length)
boxplot(iris[,4],
        main = 'Dataset')

# considering NA values
iris
max(iris$Sepal.Length)
min(iris$Sepal.Width)
mean(iris$Petal.Length)
mean(iris$Petal.Length,na.rm = T)
median(iris$Petal.Width)
median(iris$Petal.Width,na.rm = T)

var(iris$Sepal.Length)
sd(iris$Sepal.Length) #,na.rm = T) Standard Deviation # because of NA values in ozone col - no o/p
sd(iris$Sepal.Length,na.rm = T)


# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps
# -other download scanner, whats app, photo editor from play store
# which library to download for skewness 
# Google - skewness and kurtosis in R
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on package in 3rd window - bottom right corner - Click on install
# type moments in packages, in search - search for installed 'moments', click that checkbox
# OR try : install.packages("moments")

skewness(iris$Sepal.Width,na.rm = T)
kurtosis(iris$Sepal.Width,na.rm = T)

# Density Plot
plot(density(iris$Sepal.Length))
plot(density(iris$Sepal.Width,na.rm = T))









