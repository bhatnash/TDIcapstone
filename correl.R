data <- read.table("diabetic_data_cleaned.txt", header=TRUE, sep="\t")
indx <- sapply(data, is.numeric)
abs(cor(data[indx],use="pairwise.complete.obs"))
