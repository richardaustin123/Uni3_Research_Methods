# Create a 4x3 matrix
smoking_vs_exercise <- matrix(c(7,3,1,9,7,1,12,4,13,87,84,18), nrow = 4, ncol = 3)

rownames(smoking_vs_exercise) <- c("Heavy", "Regular", "Occasional", "Never")
colnames(smoking_vs_exercise) <- c("Freq", "Some", "None")

# Perform a chi-squared test
chisq.test(smoking_vs_exercise)

# View the chi-squared test result
#print(chisq_result)
