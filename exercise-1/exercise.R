# Exercise 1: Lists


# Create a vector of everything you ate for breakfast
 breakfast<-c('Kaiser roll', 'Butter', 'Salt', 'Tea')

# Create a vector of everything you ate for lunch
lunch<-c('Fries', 'Ketchup', 'Coke')

# Create a list `meals` that has contains your breakfast and lunch

meals<-list(breakfast=breakfast, lunch=lunch)

# Add a `dinner` index to your `meals` list that has what you plan to eat for dinner

meals$dinner<-c('Popcorn', 'Star Wars Movie')

 # Extract your 'dinner' element from your list and save it in a vector called 'dinner'

dinner<-meals$dinner
### Bonus ### 
# Create a list that has the number of items you ate for each meal

#my answer
lens<-list(bf=length(meals$breakfast),ln=length(meals$lunch),dn=length(meals$dinner))
#better one
 items <- lapply(meals, length)
 
  # Write a function that adds pizza to every meal

 #My very long function
AddPizza<-function(x){
  
  y<-list()
  s<-length(x)
  n<-names(x)
  for(i in 1:s){
    
    y[[n[i]]]<-c(x[[n[i]]],'pizza')
    
  }
  return(y)
}
 #a shorter way
 AddPizza <- function(x) {
   x <- c(x, 'pizza')
 }
 
# Add pizza to every meal!

 #with my function
 AddPizza(meals)

 #this one is good as well and needed with the other answer
 better.meals <- lapply(meals, AddPizza)