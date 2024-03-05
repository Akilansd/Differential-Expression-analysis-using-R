query_TCGA = GDCquery(
  project = "TCGA-PAAD",
  data.category = "Transcriptome Profiling", # parameter enforced by GDCquery
  data.type = "Gene Expression Quantification",
  experimental.strategy = "RNA-Seq",
  workflow.type = "STAR - Counts",
  sample.type = c("Primary Tumor", "Solid Tissue Normal"))



GDCdownload(query = query_TCGA)
tcga_data = GDCprepare(query_TCGA)
