#########################################
############# QUESTION 1 ################
#########################################

# Nothing really notable happening here.
# Some examples of vector concatenation to a string, etc
musketeers <- c("Athos", "Porthos", "Aramis")
print(sort(musketeers))
print(paste(1:3, musketeers, sep=", "))
print(rank(musketeers))
print(paste(musketeers, c(", ", " and ", ""), collapse="", sep=""))
print(order(musketeers))
print(paste(musketeers, "!", sep=""))
print(paste(musketeers, collapse=" - "))


#########################################
############# QUESTION 2 ################
#########################################

# Load the data.
# First column is composed of airport abbreviations/codes
# Second column are the corresponding full names of the airports
airports <- read.csv(file = "airports.csv")

# Create an empty character vector
charVec <- c()

# Iterate over rows of first column of airport data
for(row in airports[1]) {
  
  # Iterate over letter vector of the string
  for(letter in strsplit(row, "")) {
    
    # Append characters one by one to charVec
    charVec = c(charVec, letter)
    
  }
}

# Assign the most common element of the vector to a variable
mostCommonCharacter <- names(table(charVec)[1])

# Print the result
print(mostCommonCharacter)


#########################################
############# QUESTION 3 ################
#########################################

# randu stuff

# Rows where x is smaller than 0.5:
print(sum(randu[1]<0.5))

# Values larger than 0.8:
print(sum(randu>0.8))

# Rows where x is larger than z:
print(sum(randu[1]>randu[3]))

# Total rows in the data:
print(length(randu[[1]]))

# Rows where z is larger than 0.9
print(sum(randu[3]>0.9))


#########################################
############# QUESTION 4 ################
#########################################

# Match the commands to the vectors they produce
# Again, nothing really special happening here
seq(from=30, by=-3, length.out=5)
rep(1:5, times=1:5)
seq(along.with=1:5, by=-3, from=27)
rep(1:5, each=3)[seq(from=1, to=15, by=3)]
rep(1:5, each=3)
seq(from=30, to=2, by=-3)


#########################################
############# QUESTION 5 ################
#########################################

# Load the comets data.
comets <- read.csv(file="comets.csv")

# Transfer the "Perihelion.time" variable into a date
# format using the as.Date() function. How many days
# are there between the earliest and latest perihelion?

# Load the perihelions to a separate vector
perihelions <- comets$Perihelion.time

# Convert perihelions to correct date objects
dates = as.Date(perihelions, format = "%y-%m-%d")

# Sort the dates
dates = sort(dates)

# Define first and last date
firstDate = dates[1]
lastDate = dates[length(dates)]

# Calculate the interval in days between the two dates
datediff = difftime(lastDate, firstDate, units="days")
print(datediff)


#########################################
############# QUESTION 6 ################
#########################################

# cars stuff
# For each row in the data, calculate the quotient of speed and distance (speed / dist).
# What is the product of the smallest and the largest quotient?

# Calculate the quotients to a vector
quotients <- cars$speed/cars$dist

# Get min and max
minQ = min(quotients)
maxQ = max(quotients)

# Calculate the product
productOfMinQMaxQ = minQ * maxQ
print(productOfMinQMaxQ)


#########################################
############# QUESTION 7 ################
#########################################

# Only moodle now
# Your data are stored in the following data.frame called scoreboard.

#names	age	scores
#1	Alfred	25	5
#2	Bertil	31	6
#3	Casper	20	7
#4	Daniela	27	6
#5	Emily	21	10
#6	Francis	20	5

# Which one of the following commands gives you the names
# of students who are over 30 years old or whose scores are 5 in R?

# ANSWER:
# d. scoreboard$names[scoreboard$age >30 | scoreboard$scores == 5]

#########################################
############# QUESTION 8 ################
#########################################

# Get the euclidean distance of the variables
# x and y of the randu dataset

print(sqrt(sum((randu$x-randu$y)^2)))


#########################################
############# QUESTION 9 ################
#########################################

?faithful
# In how many occasions in the dataset was the observed eruption time
# over or equal to two minutes and the following waiting time equal
# to 80 minutes?
matchGeysirCriteria <- faithful[which(faithful$eruptions>=2 && faithful$waiting==80),]


#########################################
############# QUESTION 10 ###############
#########################################

seq(along.with=1:12, by=3, length.out=12)


#########################################
############# QUESTION 11 ###############
#########################################

#More randu stuff
randuQ11 <- randu[which(randu$x<0.3 & randu$y<0.7 & randu$y>0.2),]


#########################################
############# QUESTION 12 ###############
#########################################

# cars stuff ( data from question 6 )
# For each row in the data, calculate the quotient of speed and distance (speed / dist).
# What is the difference between the smallest and the largest quotient?

# Calculate the product
diffOfMinQMaxQ = maxQ - minQ
print(diffOfMinQMaxQ)


#########################################
############# QUESTION 13 ###############
#########################################

# The data 'women' in the package 'datasets' has weights and heights
# of American women aged 30 - 39. The data is in pounds and inches.
# Transform the weight to kilograms and height to meters and find
# which of the following is the average height and weight.

wimminweight <- c(women$weight*0.453592)
wimminheight <- c(women$height*2.54)

print(mean(wimminheight))
print(mean(wimminweight))


#########################################
############# QUESTION 14 ###############
#########################################

# randu stuff

# Do the following to the variable x:
# - Save values into a vector v
# - Raise all the values in v to third power
# - Divide all the values in v by the largest value in v
# - Take the square root of all the values in v

# What is the sum of the values in v after these steps rounded
# to closest integer value?
vecv = randu$x
vecv = vecv ^ 3
vecv = vecv / max(vecv)
vecv = sqrt(vecv)
print(sum(vecv))

#########################################
############# QUESTION 15 ###############
#########################################

# Match the commands to the vectors they produce.
print(month.name[grep("M", month.name)])
print(LETTERS[1:6])
print(grep("J", month.name))
print(length(letters))
print(month.name[6:8])
print(letters[1:6])
