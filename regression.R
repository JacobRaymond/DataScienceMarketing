# Connect to our data
df <- read.csv("/Users/JacobRaymond 1/Desktop/Ex_Files_Data_Science_of_Marketing/Exercise_Files/03_02/regression-r.csv")

# Plot our data (broadcast & sales)
plot(df$BROADCAST, df$NET.SALES)

# Fit a line
mod=lm(df$NET.SALES~df$BROADCAST)

# Visualize the line
abline(mod)

# Show our coefficients 
mod$coefficients
