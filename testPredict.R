x <- read.table("diabetic_data_cleaned.txt", header=TRUE, sep="\t")
indx <- sapply(x, is.numeric)
x[indx] <- lapply(x[indx], scale)
x[,indx] <- impute(x[,indx],what="mean")

fit <- svm(x,y, cost=10000, gamma = 0.19, kernel="radial", type="C-classification",na.action = na.omit)

t <- read.table("crossValidationSet.txt", header=TRUE, sep="\t")

tlabels <- read.table("~/Dropbox/Cardiomyopathy/ClinVarExtendedLists/testLabels.txt", header=FALSE, sep="\t")
t[indx] <- lapply(t[indx], scale)
t[indx] <- impute(t[,indx],what="mean")

pred <- predict(fit, as.matrix(as.data.frame(t)), decision.values = TRUE, probability = FALSE)

(acc <- t(table(pred, tlabels$V1)))
TN<-acc[1,1]
TP<-acc[2,2]
FP<-acc[1,2]
FN<-acc[2,1]
(Accu<-(TN+TP)/(TN+TP+FN+FP))
(Prec<-TP/(TP+FP))
(Sens<-TP/(TP+FN))
(Spec<-TN/(TN+FP))
