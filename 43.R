dds <- DESeqDataSetFromMatrix(countData = count_data,
                              colData = clin_df,
                              design = ~ treatments)

dds <- DESeq(dds)


res <- results(dds) 


res_filtered <- subset(res, padj < 0.05 & abs(log2FoldChange) > 1)

# Add gene IDs as a separate column in the results table
res$GeneID <- rownames(res)

remove(top_genes)

str(gene_ids)
