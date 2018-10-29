# TDIcapstone

I found an interesting dataset on UCI ML Repository -- 100K records of compiled health facts about diabetes patients from 130 US hospitals. I believe, given certain metric such as admission type, medications, length of stay, ward, lab tests, number of emergency visits, etc., it is possible to predict if a patient is likely to get readmitted. Identifying patients that are likely to be readmitted i.e. are vulnerable could impact overall health and recovery of a patient. The hospital could give more attention and more thorough examination to identify reasons for any vulnerability. 

There is one citation for this dataset - https://www.hindawi.com/journals/bmri/2014/781670/. 
They have used a statistical model to ascertain relationship between 1 of 50 attributes(HbA1c) and admittance. I think I can improve upon this by carefully selecting good attributes and fitting a classifier to predict readmittance. Below, I show that there is more signal besides HbA1c that we can capture. 

In Link1, when i calculate pairwise correlation across all fields, i see correlation in more than just HbA1c. I can see correlation with disposition, admission condition, number of diagnoses. I also see these variable correlated with other variable. Therefore, there are probably variables in combination likely having higher correlation with readmittance.

