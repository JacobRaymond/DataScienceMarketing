# Connect to our data 

#We want to rank user interest for three photography features: edit, filter, and collage.

#500 observations, we test six combinations and ask users to rank their interest
myConjointData <- read.csv("/Users/JacobRaymond 1/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/06_02/conjoint-r.csv")

#We suppose the photography feature has three options
myConjointDataProfilesMatrix <- read.csv("/Users/JacobRaymond 1/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/06_02/conjoint-r-profiles-matrix.csv")

#All possible options of interest (we are only interested in the first 3)
myConjointDataLevelNames <- read.csv("/Users/JacobRaymond 1/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/06_02/conjoint-r-level-names.csv")

# Step 1.) Install the conjoint package
# install.packages("conjoint")
# Step 2.) Load the conjoint package
library(conjoint)
# Step 3 if needed.) If R throws an error, refer to the readme file in the Exercise_Files

# Model some of our data (first user)
myConjointData[1,]
caUtilities(y=myConjointData[1,], x=myConjointDataProfilesMatrix, z=myConjointDataLevelNames)
#user is interest in editing, considers filtering and collage about equally.

# Model all of our data
caUtilities(y=myConjointData, x=myConjointDataProfilesMatrix, z=myConjointDataLevelNames)




