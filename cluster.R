# Cluster Analysis 

# Connect to our case study data
df <- read.csv("/Users/JacobRaymond 1/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/05_02/cluster-r.csv")

# Review our data
head(df)

# Standardize the data
df.st=scale(df[-1])

# Run kmeans on our standardized data
#Three groups
groups=kmeans(df.st, 3)

# Load in our cluster library 
library(cluster)

# Visualize our clusters
clusplot(df.st, groups$cluster)

# Summarize our data
groups$size
