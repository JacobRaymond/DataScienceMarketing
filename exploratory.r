# import csv file 
df=read.csv("/Users/JacobRaymond 1/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/02_02/exploratory-r.csv")

# get a quick snapshot of your data
head(df)
hist(df$cpa)

# shift the names to each row
row.names(df)=df$keyword

# review that transformation
head(df)

# transform into a matrix 
df.matrix=data.matrix(df)

# generate our heatmap
heatmap(df.matrix, Rowv=NA, Colv=NA, scale="column")
