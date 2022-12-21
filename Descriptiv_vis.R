ages <- c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary <- c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

plot(ages,salary)
plot(salary,ages)

help(plot)

################### airquality dataset ########################

#airquality = read.csv('path/airquality.csv',header=TRUE,sep=",")
#Click on import dataset

airquality <- datasets ::airquality

### Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all columns

# To see entire dataset click on airquality data set name 
####### columns
airquality[,c(1,2)] # all rows and 1st two cols

df <- airquality[,-6] # excluding column no. 6
df

summary(airquality[,1])  # summary of wind column

airquality$Wind # display column values

summary(airquality$Wind) # summary for wind col


#######################summary of data#################

summary(airquality) # summary of all cols


############################ visualization ###############################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind, type="p") # combination of two cols
plot(airquality)  # scatterplot
hepl(plot)

## points and lines
plot(airquality$Wind,type="p")
plot(airquality$Wind,type="l")
plot(airquality$Wind,type="b")

plot(airquality$Wind,
     xlab = 'Ozone concentration',
     ylab = 'No of Instances',
     main = 'Ozone levels in NY city',
     col = 'blue',
     type = 'l')


plot(airquality,col='red') # plot of entire dataset - all cols

plot(airquality$Ozone,airquality$Solar.R) # x axis - ozone, y axis - solar.R
plot(airquality$Solar.R,airquality$Ozone)  # x -solar.R , y - ozone


# horizontal bar plot
barplot(airquality$Ozone,
        main = 'Ozone concentration in air',
        ylab = 'ozone level',
        col = 'blue',
        horiz = T,
        axes = F)
help(barplot)

# Histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'Solar Rad.',
     col = 'green')

# Single box plot
boxplot(airquality$Wind,
        main="Boxplot",
        col = "green",
        horizontal = T)

boxplot.stats(airquality$Wind)$out  #outlier values

airquality$Ozone

# Multiple box plots 
boxplot(airquality[,1:4],
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
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type ="l")
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type ="l")

barplot(airquality$Ozone,
        main = 'Ozone concenteration in air',
        xlab = 'ozone levels',
        col = 'green',
        horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0.4],
        main = 'Multiple box plots')

# considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
mean(airquality$Solar.R)
mean(airquality$Solar.R,na.rm = T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)


# Google following functions as variance in R. etc
#var
#Skewness
#kurtosis
#Density plot

var(airquality$Wind)
sd(airquality$Ozone) #,na.rm = T) Standard Deviation # because of NA values in ozone col - no o/p
sd(airquality$Ozone,na.rm = T)

skewness(airquality$Ozone) #error
kurtosis(airquality$Ozone) #error

# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps
# -other download scanner, whatsapp, photo editor from play store
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

skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Ozone,na.rm = T)

# Density Plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm = T))


##### Class work ####
e_quakes <- datasets::quakes

sd(airquality$Ozone,na.rm = T)

#################     VAR
var(e_quakes$mag)

#################     Skewness
skewness(e_quakes$mag)
mean(e_quakes$mag)

#################     Kurtosis
kurtosis(e_quakes$mag)

#################     Density plot
plot(density(e_quakes$mag))
plot(density(e_quakes$mag,na.rm = T))




