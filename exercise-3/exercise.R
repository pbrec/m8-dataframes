# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)

emp<-sapply(1:100, function(x) paste("Employee", x))

# Create a vector of 2014 salaries using the runif function

sal14<-runif(100,1600,2200)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
sal15<-runif(100,1700,2300)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries<-data.frame(sal14,sal15)
rownames(salaries)<-emp
# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise<-salaries$sal15-salaries$sal14

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise<-salaries$raise>0

# Retrieve values from your data frame to answer the following questions:

# What was the 2015 salary of employee 57
salaries['Employee 57','sal15']

# How many employees got a raise?
length(which(salaries$got.raise) )

# What was the value of the highest raise?
max(salaries$raise)

# What was the name of the employee who recieved the highest raise?
rownames(salaries[salaries$raise==max(salaries$raise),])

# What was the largest decrease in salaries between the two years?
min(salaries$raise)

# What was the name of the employee who recieved largest decrease in salary?
rownames(salaries[salaries$raise==min(salaries$raise),])

# What was the average salary increase?

mean(salaries$raise[salaries$got.raise==T])


### Bonus ###

# Write a .csv file of your salaries to your working directory


# For people who did not get a raise, how much money did they lose?
mean(salaries$raise[salaries$got.raise==F])

# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
emp<-sapply(1:100, function(x) paste("run", x))
salaries<-data.frame(emp)

for (i in 1:10000){
  sal14<-runif(100,1600,2200)
  sal15<-runif(100,1700,2300)
  dif<-sal15-sal14
  tmp<-data.frame(dif)
  tmp$got.raise<-tmp$dif>0
  salaries[i,2]<-mean(tmp$dif[tmp$got.raise==F])
  
}
mean(salaries$V2)
# Does the average loss equal what you expect?
# What about 10,000 times?
