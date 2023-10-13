# Given data
population_mean <- 71
population_sd <- 4
sample_data <- c(80, 74, 73, 72, 78, 75, 70, 74, 69)
sample_size <- length(sample_data)
sample_mean <- mean(sample_data)

# Standard error of the mean
sem <- population_sd / sqrt(sample_size)

# Calculate the z-test statistic
z <- (sample_mean - population_mean) / sem

# Calculate the critical value for a one-tailed test at the 95% confidence level
alpha <- 0.05
critical_value <- qnorm(1 - alpha)

# Calculate the confidence interval
confidence_interval <- sample_mean + c(-1, 1) * (qnorm(0.95) * sem)

cat("Z-test statistic:", z, "\n")
cat("Critical value:", critical_value, "\n")
cat("Confidence interval:", confidence_interval, "\n")

# Interpretation
if (z > critical_value) {
  cat("There is significant evidence to suggest that heart rate increases in men while waiting to attend a job interview.\n")
} else {
  cat("There is not significant evidence to suggest that heart rate increases in men while waiting for a job interview.\n")
}
