# Identify extra columns in count data
extra_columns <- setdiff(colnames(tcga_data), rownames(clin_df))

# Remove extra columns from count data
tcga_data <- tcga_data[, !colnames(tcga_data) %in% extra_columns]


# Assuming tcga_data is a SummarizedExperiment object
count_data <- assay(tcga_data)
count_data <- as.matrix(count_data)






