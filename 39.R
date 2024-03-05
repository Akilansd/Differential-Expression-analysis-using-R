# MA plot
plotMA(res)


# Define colors based on conditions
colors <- ifelse(res$log2FoldChange > 0 & -log10(res$padj) > 1, "red", 
                 ifelse(res$log2FoldChange < 0 & -log10(res$padj) > 1, "blue", "black"))

# Plot with modified colors
plot(res$log2FoldChange, -log10(res$padj), pch=20, main="Volcano Plot",
     xlim=c(-3, 3), ylim=c(0, 10), col=colors)



rm(specific_factor)
