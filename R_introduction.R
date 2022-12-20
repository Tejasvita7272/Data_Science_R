# to output text 

"Hello world"
'Hello World!'

#to output numbers
5+6

# variable
name <- "Teja"             #name = variable  Teja =  value
age<-22
Text <- "Excellent"
paste("Excelr is", Text)  # concatenation/ combine

# Assign same value to multiple variable in one line
var1 <- var2 <- var3 <- "Apple"

#Legal variable names 

Myvar <- "Teja"
My_var <- "sanket"
MYVAR <- "Tejanket"
Myvar2 <- "om"
this.year <- 2022
.myvar <- "Praju"

# like this not allowed in R  / illegal

My*Var <-"s"   
2Myvar <- "s"
My-var <- "s"
My var <- "s"
_My_var <- "s"
My_v@var <- "s"
TRUE <- "s"

# Data Types in R 

# Numeric / float - decimal whole +ve -ve 

x <- 10.5
class(x)

#Integer - whole +ve -ve L
y <- 1000L
class(y)

# Character or string 
x <- "R is Exciting"
class(x)

#Boolean Or Logical 
x <-  TRUE # TRUE or T
class(x)
x <- FALSE # FALSE or F
class(x)

3>5
7>5
5==5
1!=6


#Arithmetic Operators
x <- 20
y <- 3


x+y
x-y
x*y
x/y      # float / decimal result
x^2
x %% y  #modulus operator
x %/% y # integer division


2 * pi *6378
??Constants  # to know the constants in R 

#Assignment Operator
x <- 50
50 -> x


# Built in Math functions

max(25,78,10,1000)
min(2,10,3)
sqrt(25)
abs(-4.5)

# Data Structures 
# Vector of strings 
Fruits <- c("Apple","Banana","Pitch","Water-melon","Straberry")
class(Fruits)

# Vector of Numerical Values
DOB <- c(25L,13L,14L)
N2 <- c(T,F,TRUE,FALSE)

#Heterogeneous Vectors
mix <- c(81,5.2,TRUE,"Mango",5L,F)
class(mix)


(5+2)*6  #precedence matters 
5+2*6    #precedence matters

x <- c(2,0,0,4)
y <- c(1,9,9,9)
x+y
x-y
x*5
(x+y)*1.5


# Sequence
n1 <- 1.5:6.3
n1

n2 <- 1.5:6.5
n2

1:10
40:45
seq(1,50,5)

# Repetition
rep(45,7)
rep("Mango",3)

# Random Sample
sample(1:50,8)
sample(1:10,200)  # gives error here becoz default value if replace=FALSE 
sample(1:10,200,replace = TRUE)
sample(c("HP","Apple","Lenovo"),500,replace = T)


#********************************************************************************#

# Indexing / Accessing vector elements

x <- c(2,0,0,4)
x[1]        # for 1st elements 
x[c(1)]     # for 1st elements 
  
x[-1]      # exclude 1st elements 
x[-2]      # exclude 2nd elements
x[-3]     # exclude 3rd elements

x[1] <- 3  # for update the value of 1st or any num. use this
x[-1]=5    # it gives value 5 to all elements excluding 1st element
x

x[c(1,3)]  # it gives 1st and 3rd element of vectors

y <- c(1,9,9,9)

y < 9

y[y<9]=5

y<9


# Relational operators with vectors

marks <- c(60,70,80,50,90)
marks < 50
marks[marks>50]

marks == 80

names <- c("Teja","Sanket","Praju","Omkar","Om")
"Sanket" %in% names   #elements is available or not 
"sanket" %in% names   # it is case sensitive
"Ram" %in% names



#Slicing 

marks 
marks[3:7]   #range 
marks[4]
marks[3] <- 97
marks[4] <- 89
marks[5] <- 79
marks

marks[-3] <- 100
marks

price <- c(2999,449,29,650,2800,192,9384,373,474,4745)
price[2:7]


# select elements from a vector with conditions

price[price>1000]
sort(price)
sort(price,decreasing = TRUE)  # Descending
sort(price,decreasing = F)     # Ascending

help(sort)
help(mean)

# Basic functions on vector

price

length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)


# Data Frames
# Slicing data Frames

a <- c(42,18,91,87,66)
b <- c("p","q","r","s","t")

data.frame(a,b)

df <- data.frame(a,b)
df

# data frame with direct values of rows and cols
df1 <- data.frame(
  Training = c("Strength","Stamina","Other"),
  Pulse = c(100,150,120),
  Duration = c(60,30,45)
)
df1

# dataframename[row,col]   Syntax 

df1[,1]  # all the values of 1st col
df1[1,]  # all the values of 1st row
df1[2,]   # all the values of 2nd row

df1$ # it displays all the col names

df2 <- data.frame(Height = c(150,160), Weigth = c(65,72))


##### Assignment #####
df3 <- data.frame(x = c(1,2,3), y = c("a","b","c"))
# 1 print value 1
df3[1,1]

# 2 print value 1 and a
df3[1,c(1,2)]

# 3 print value "a" and "c"
df3[c(1,3),2]

# 4 print 1 and 3 
df3[c(1,3),1]

# 5 print 1,a,3,c
df3[c(1,3),c(1,2)]
###OR###
df3[c(1,3),]


# Food data table

food<-data.frame(name = c("Pav Bhaji","Paneer Masala","Kaju Katli",
                            "Butter Chicken","Gulabjamun","Mutton Biryani"),
                   types = c("veg","veg","veg","non veg","veg","non veg"),
                   taste = c("spicy","spicy","sweet","spicy","sweet","spicy"),
                   price = c(120,235,420,340,90,315))
food

# Rows with food type : Veg

food[food$type=='veg',]

# Food names and prices of all non veg items

food[food$type=='non veg',c(1,4)]
# OR
food[food$type=='non veg',c("name","price")]

# all spicy food with price less than 300

food[food$taste=='spicy' & food$price<300,]

# Orange, mtcars are built in data set. learn with this dataset.
Orange
mtcars

dim(mtcars) #no of rows and no. of columns 
nrow(mtcars) # no of rows
ncol(mtcars) # no of columns
str(mtcars) # Structure - col names data type and values
summary(mtcars) 
help(mtcars) # info of dataset 
mtcars$cyl # individual col cyl values
table(mtcars$cyl) #there are 11 cars having 4 cylinders,7 cars- 6 cyl, 14 cars - 8 cyl


#USArrests - another dataset 
USArrests
help("USArrets")
View(USArrests) # dataset open in new windows in table structure

head(USArrests) # by default shows first 6 records
tail(USArrests)
head(USArrests,8)

# check all available datasets
data()







