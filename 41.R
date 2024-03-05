# Initialize a vector to store the first characters
first_characters <- character(length = length(clin_df@listData[["treatments"]]))

# Extract the first character from each element in the list
for (i in seq_along(clin_df@listData[["treatments"]])) {
  treatment <- clin_df@listData[["treatments"]][[i]][["treatment_or_therapy"]]
  first_characters[i] <- substr(treatment, 1, 1)  # Extract the first character
}

# Convert the vector to a factor
clin_df$treatments <- as.factor(first_characters)
