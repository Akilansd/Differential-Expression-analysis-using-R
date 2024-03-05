# Load the required package
library(openxlsx)

# Convert baseMean values to a data frame
Differential_exp_analysis <- data.frame(
  GeneID = res@listData$GeneID,
  baseMean = res@listData$baseMean,
  log2FoldChange = res@listData$log2FoldChange,
  lfcSE = res@listData$lfcSE,
  stat = res@listData$stat,
  pvalue = res@listData$pvalue,
  padj = res@listData$padj
)

# Write the data frame to an Excel file
write.xlsx(Differential_exp_analysis, file = "Differential_exp_analysis.xlsx", row.names = FALSE)
