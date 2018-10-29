data <- read.table("diabetic_data_cleaned.txt", header=TRUE, sep="\t")
indx <- sapply(data, is.numeric)
cor_data<-abs(cor(data[indx],use="pairwise.complete.obs"))
plot(cor_data)
