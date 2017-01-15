# Exercise 6: Popular Baby Names Over Time
setwd("~/skripten/info201/m8-dataframes/exercise-6/")
# Read in the female baby names csv file into a variable called `female.names`
female.names<-read.csv("data/female_names.csv")

# Create a vector `year` as the year column of the dataset
year<-female.names$year

# Create a vector `name` as the name column of the datset
# As in the last exercise, you'll need to convert this column to a vector
name<-as.vector(female.names$name)

# Create a vector `prop` as the proportion column of the dataset
prop<-female.names$prop

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013<-name[year == 2013]

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013<-prop[year == 2013]

# What was the most popular female name in 2013?
names.2013[prop.2013==max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular<-function(my.year){
  year<-female.names$year
  name<-as.vector(female.names$name)
  prop<-female.names$prop
  names.y<-name[year == my.year]
  prop.y<-prop[year == my.year]
  most.pop<-names.y[prop.y==max(prop.y)]
  out<-paste('The most popular name in', my.year, 'is', most.pop)
  return(out)
}

# What was the most popular female name in 1994?
MostPopular(1994)

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular<-function(my.name,my.year){
  year<-female.names$year
  name<-as.vector(female.names$name)
  prop<-female.names$prop
  names.y<-name[year == my.year]
  prop.y<-prop[year == my.year]
  prop.name<-prop.y[names.y==my.name]
  how.pop<-prop.y[prop.y>=prop.name]
  out<-paste('The name',my.name,'was the number',length(how.pop),'most popular name in',my.year)
  return(out)
}

# How popular was the name 'Laura' in 1995
HowPopular('Laura',1995)
