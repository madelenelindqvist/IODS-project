#Madelene Lindqvist
#3.2.2017
#First RStudio data wrangling exercise

learning2014<-read.table("http://www.helsinki.fi/~kvehkala/JYTmooc/JYTOPKYS3-data.txt\t", header=T)
str(learning2014)
dim(learning2014)

#The data has got 183 observations and 60 variable
#Variables are e.g. attitude, points and gender

learning2014$gender
learning2014$Age
learning2014$Attitude
learning2014$deep
learning2014$stra
learning2014$Points

#Scaling all variables with the mean
learning2014$k�n <- learning2014$gender/mean(learning2014$gender)
learning2014$�lder <- learning2014$Age/mean(age)
learning2014$attityd <- learning2014$attitude/mean(attitude)
learning2014$djup <- learning2014$deep/mean(deep)
learning2014$strategisk <- learning2014$stra/mean(stra)
learning2014$po�ng <- learning2014$points/mean(points)

#Exclude variables
learning2014$k�n <- filter(learning2014$k�n, points >=1)
learning2014$�lder <- filter(learning2014$�lder, points >=1)
learning2014$attityd <- filter(learning2014$attityd, points >=1)
learning2014$djup <- filter(learning2014$djup, points >=1)
learning2014$strategisk <- filter(learning2014$strategisk, points >=1)
learning2014$po�ng <- filter(learning2014$po�ng, points >=1)


write.csv(create_learning2014.txt)

read.table(create_learning2014.txt)
