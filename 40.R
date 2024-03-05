clin_df = clinical[clinical$definition == "Primary solid Tumor",
                   c("patient",
                     "vital_status",
                     "days_to_death",
                     "days_to_last_follow_up",
                     "treatments",
                     "gender")]


clinical = tcga_data@colData


