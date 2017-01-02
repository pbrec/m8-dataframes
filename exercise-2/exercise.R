# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
scored<-c(12,3,37,27,26,6,20,31,31,26,5,40,10,24,31,25,17,11,27,23)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
received<-c(10,9,18,17,24,6,25,25,24,15,14,7,38,3,34,23,16,18,17,21)

# Combine your two vectors into a dataframe
hawks<-data.frame(scored,received)

# Create a new column "diff" that is the difference in points
hawks$diff<-hawks$scored-hawks$received

# Create a new column "won" which is TRUE if the Seahawks wom
hawks$won<-hawks$diff>0

# Create a vector of the opponents

opponents<-c('dolphins','rams-1','49ers-1','jets','falcons','cardinals-1','saints','bills','patriots','eagles','buccaneers','panthers','packers','rams-2','cardinals-2','49ers-2','chiefs','vikings','cowboys','raiders')

# Assign your dataframe rownames of their opponents
rownames(hawks)<-opponents
