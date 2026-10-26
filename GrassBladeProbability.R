
# GrassBladeProbability.R
# Wesley Sutton
# 10/25/2026
# Calculate probabilities and Z-scores for grass blade lengths

mean_value <- 10
variance_value <- 2
sd_value <- sqrt(variance_value)

# Probability of grass blades between 9.5 and 11 mm
prob_between <- pnorm(11, mean = mean_value, sd = sd_value) -
  pnorm(9.5, mean = mean_value, sd = sd_value)

# Calculate Z-scores and confirm the probability
z_lower <- (9.5 - mean_value) / sd_value
z_upper <- (11 - mean_value) / sd_value

prob_z <- pnorm(z_upper) - pnorm(z_lower)

# Find the blade length for the shortest 2.5 percent
shortest_2_5 <- qnorm(0.025, mean = mean_value, sd = sd_value)

# Standardize the shortest blade length
z_shortest <- (shortest_2_5 - mean_value) / sd_value

# Display results
cat("Probability blade is between 9.5 and 11 mm:", prob_between, "\n")
cat("Probability from Z-scores for 9.5 and 11 mm:", prob_z, "\n")
cat("Blade length below shortest 2.5%:", shortest_2_5, "mm\n")
cat("Z-score of shortest 2.5% blade:", z_shortest, "\n")
