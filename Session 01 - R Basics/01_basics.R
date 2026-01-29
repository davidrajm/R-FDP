print("Hello World!")
setwd("~/Documents/myrepos/R-FDP/Session 01")
a = 3
b = 4
a + b
a - b
a*b
a/b
a %/% b
b %/% a
a^b
sin(30)
sin(90)
log(2)
log(2,2)
log10(10)
log2(2)

log(100,10)

# Logical Operators
# ==, 
4 == 4
4 == 5
a = TRUE
b = (a == 5)
b
# & | 

a = 5
b = 4
(a == 5) & (b == 5)

(a == 5) | (b == 5)
TRUE * 5
FALSE * 5

a > 5
a < b
a <= b
a >= b
a != b

## Vectors ---
u = c(1,2,3,4)
v = c(4,5,6,7)

u + v
u - v
u * v
u / v

# broadcasting...
u * c(2,3)
u * c(2,3,2,3)

u + 2
u ^2
u^v
u
v
head(v)

u = c(1,2,2,4,5,6,7,8,9,10,11,23,45)
head(u)
tail(u)
head(u, 10)
head(u,-10)
tail(u,-10)
## Sequences

x = 1:10
x
# it includes the staring and ending.
y = seq(1,10,2)
y
z = seq(10,-2,1)
seq(start = 10, by = -2, end = 1)
z
w = c(3,5,1,7,1)
sorted_w = sort(w)
sorted_w
sort(w, decreasing  = T)

color = c("Red","Blue","Green")
sort(color, decreasing = T)

#Slicing...
u[1:3]

seq(1,2,by = 0.2)


seq(1.0,2.0,by = .5)


# Some strings Operations.
name = "David"
cat("My Name",name)

cat("My Name",name,sep = "," )
paste("My Name",name)


## Data Types

a = 3.0
class(a)
class(name)
class(TRUE)
u
summary(u)

u = c(2,3,4,5)
class(u)
v = c(2,3,"David")
class(v)
v[1]
u[1]
class(v[1])

f = as.factor(u)
class(f)


## basic statistics
u = seq(1,10)
u
mean(u)
sd(u)
var(u)
median(u)

v = c(c(1,2),c(3,4))
v
mean(v)

matrix(c(1,2,3,4),nrow = 2, byrow = TRUE)



u = c(1,2,3,NA)
mean(u)
mean(u, na.rm = TRUE)
sd(u, na.rm = TRUE)


### Some Data already available in R repo

data()
AirPassengers
BOD
airquality
?airquality

cars
?cars


names(cars)
cars$speed
mean(cars$speed)
mean(cars$dist)

cor(cars$speed, cars$dist)

lm(cars$speed ~ cars$dist)




## vector masking

a = seq(5,15)
a
a > 10 # mask
a[a > 10]

# 

mask = (a %% 2 == 0)
a[!mask]


a[a > mean(a)]
a[a > median(a)]


## Conditionals...

age = 25

if (age > 18 ){
  print("Eligible to Vote")
}else{
  print("Not eligible to vote")
}


## Loops

for (i in 1:10){
  print(i)
}


## user defined functions...
eligiblity_checker = function (age){
  if (age > 18 ){
    print("Eligible to Vote")
  }else{
    print("Not eligible to vote")
  }
  
}


eligiblity_checker(age = 20)
eligiblity_checker(age = 10)


## Counting...

choose(5,2)
items = c("A","B","C","D","E")
combn(items,2)

combn(items,3)


# generating random numbers

runif(1)
runif(3)
rnorm(2)
rnorm(2,mean=10,sd=2)
rpois(2,0.5)
rbinom(3,size = 10, prob = 0.2)

## sampling...
items
sample(items,2)

set.seed(100)
sample(items,2)


## Reading the data
df = read.csv("./data/Salary_Data.csv")
head(df)
dim(df)
summary(df)
str(df)

# What is the mean years of exp?
mean(df$YearsExperience)
median(df$YearsExperience)


#how many observations are above the mean/median?
length(df$YearsExperience)
yrs_exp = df$YearsExperience
length(yrs_exp[yrs_exp > mean(yrs_exp)])

df[1:5,2]

#Give me the top 5 salaries.
sal = df$Salary
sorted_sal = sort(sal,decreasing = T)
sorted_sal[1:5]









