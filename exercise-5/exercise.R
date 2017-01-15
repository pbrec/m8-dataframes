# Exercise 5: Gates Foundation Educational Grants
setwd("~/skripten/info201/m8-dataframes/exercise-5/data/")
# Read data into a variable called `grants` using the `read.csv` function

grants<-read.csv("gates_money.csv")

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending<-grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org<-grants$organization
is.vector(org)
org<-as.vector(org)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
grantMean<-mean(spending)

# What was the dollar amount of the largest grant?
grantMax<-max(spending)

# What was the dollar amount of the smallest grant?
grantMin<-min(spending)

# Which organization received the largest grant?
orgMax<-grants$organization[grants$total_amount == grantMax]

# Which organization received the smallest grant?
orgMax<-grants$organization[grants$total_amount == grantMin]

# How many grants were awarded in 2010?
length(grants[grants$start_year == 2010,])
