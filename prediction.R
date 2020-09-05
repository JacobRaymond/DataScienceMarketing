# Connect to our data
df <- read.csv('/Users/JacobRaymond 1/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/04_02/prediction-r.csv')

# Sum our classifications so we can see them 
table(df$sales.classification)

# Output our column names for easy reference 
names(df)

# Install our algorithm (the tree package)
library(tree)

# Bring our newly installed algorithm into our library of packages

# Configure our algorithm to create our tree
myDecisionTree <- tree(sales.classification ~ capita + drive.by.traffic + complimentary.establishments + competition + weather + unemployment.rate + var1 + var2 + var3, data=df)

# Plot our tree so we can see the algorithms output
plot(myDecisionTree)

# Label our tree
text(myDecisionTree)

# Prune our tree (3=number of branches)
prune=prune.tree(myDecisionTree, best=3)

# Plot our pruned tree
plot(prune)

# Label our pruned tree 
text(prune)
