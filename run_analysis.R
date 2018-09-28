library(reshape2)

#reading common labels
featureslabels <- read.table("features.txt", header = F)[,2]
activitylabels <- read.table("activity_labels.txt", header = F)[,2]

##############################################################################

#reading train data set
trainactivity <- read.table("train/y_train.txt", header = F)
trainfeatures <- read.table("train/X_train.txt", header = F)
trainsubject <- read.table("train/subject_train.txt", header = F)

#renaming columns
names(trainfeatures) = featureslabels
trainactivity = sapply(trainactivity, function(x){levels(activitylabels)[x]})
colnames(trainactivity) = "activity"
colnames(trainsubject) = "subjectid"

#merging train data set
datatrain <- cbind(trainfeatures, trainactivity, trainsubject)

#adding one more column to identify set
datatrain[, 564] = "TRAIN"

##############################################################################

#reading test data set
testactivity <- read.table("test/y_test.txt", header = F)
testfeatures <- read.table("test/x_test.txt", header = F)
testsubject <- read.table("test/subject_test.txt", header = F)

#renaming columns
names(testfeatures) = featureslabels
testactivity = sapply(testactivity, function(x){levels(activitylabels)[x]})
colnames(testactivity) = "activity"
colnames(testsubject) = "subjectid"

#merging test data set
datatest <- cbind(testfeatures, testactivity, testsubject)

#adding one more column to identify set
datatest[, 564] = "TEST"

##############################################################################

#merging to one data set
data <- rbind(datatrain, datatest)

##############################################################################

#selecting only mean and std from measurements
data <- data[,grepl(pattern = "std|mean", x = colnames(data))]

#merging needed columns to tidydata
tidydata <- cbind(data, rbind(trainactivity, testactivity), rbind(trainsubject, testsubject))
melted <- melt(tidydata, id.vars = c("subjectid","activity"))
newdata <- dcast(melted, subjectid + activity ~ variable, mean)
names(newdata)[-c(1:2)] <- paste("[average of]" , names(newdata)[-c(1:2)] )
write.table(newdata, "tidy_data.txt", sep = ",", row.names = F)


