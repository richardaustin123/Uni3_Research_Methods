# Create the vector q1_vec
q1_vec <- c(40, 5, 20, 90, 10, 15)

# (a) Calculate the mean time taken
mean_time <- mean(q1_vec)

# (b) Calculate the median time taken
median_time <- median(q1_vec)

# (c) Calculate the standard deviation of the time
std_dev <- sd(q1_vec)

# (d) Calculate the standard error of the mean
std_error <- std_dev / sqrt(length(q1_vec))

# (e) Calculate the typical low and high range for the mean
low_range <- mean_time - 2 * std_error
high_range <- mean_time + 2 * std_error

# (f) Calculate the low and high values for the mean with 95% probability
alpha <- 0.05  # 1 - 0.95 (for a 95% confidence interval)
df <- length(q1_vec) - 1  # degrees of freedom

critical_value <- qt(1 - alpha / 2, df)
low_confidence <- mean_time - (critical_value * std_error)
high_confidence <- mean_time + (critical_value * std_error)
