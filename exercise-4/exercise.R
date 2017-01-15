# Exercise 4: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
pers.df<-data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(pers.df)

# Why are they so strange?
#Cause numbers

# What are the row names of your dataframe?
rownames(pers.df)

# Create a column `category` that is equal to your rownames
pers.df$category<-rownames(pers.df)

# How much money was spent on personal care in 1940?
pers.df[pers.df$category=='Personal Care','X1940']

# How much money was spent on Food and Tobacco in 1960
pers.df[pers.df$category=='Food and Tobacco','X1960']

# What was the highest expenditure category in 1960?
pers.df$category[pers.df$X1960 == max(pers.df$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
x<-1960
year<-paste('X',x,sep = "")
pers.df$category[pers.df[,year] == max(pers.df[,year])]

highestSpending<-function(x){
  year<-paste('X',x,sep = "")
  pers.df$category[pers.df[,year] == max(pers.df[,year])]
}

highestSpending(1940)

# Using your function, determine the highest spending category of each year



# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
list<-list()
c<-1
for (i in c(1940,1945,1950,1955,1960)){
  list[c]<-highestSpending(i)
  c<-c+1
}
list
