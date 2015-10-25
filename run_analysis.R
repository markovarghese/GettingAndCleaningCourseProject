# This R file 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



# load our fav libraries
library(dplyr)
# read the features file
features <- read.table("./UCI HAR Dataset/features.txt", sep = " ", header = FALSE, col.names = c("id", "feature"))
# find the features that have mean or standard deviation
features <- mutate(features, isMeanOrStdFeature = grepl("(.*-mean[(][)].*)|(.*-std[(][)].*)",feature))
#make descriptive varaiable names out of these features
features <- mutate(features, descriptiveVariable = gsub("[-]", "", gsub("[()][)]", "", gsub("mean", "Mean",gsub("std", "Std",feature)))))
#read the activity labels
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep = " ", header = FALSE, col.names = c("id", "activity"))

#read the training subjects
trainingsubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = " ", header = FALSE, col.names = c("subject"))
#read the training labels
traininglabels <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = " ", header = FALSE, col.names = c("id"))
#merge the training labels with the activity labels
traininglabels <- merge(traininglabels, activitylabels, by.x = "id", by.y = "id")
#read the training data
trainingdata <- read.fwf("./UCI HAR Dataset/train/X_train.txt", widths = ifelse(features$isMeanOrStdFeature, 16, -16), header = FALSE, col.names = (filter(features, isMeanOrStdFeature))$descriptiveVariable)
#add activities and subjects to training data
trainingdata$subject <- trainingsubjects$subject
trainingdata$activity <- traininglabels$activity

#read the test subjects
testsubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = " ", header = FALSE, col.names = c("subject"))
#read the test labels
testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = " ", header = FALSE, col.names = c("id"))
#merge the test labels with the features
testlabels <- merge(testlabels, activitylabels, by.x = "id", by.y = "id")
#read the test data
testdata <- read.fwf("./UCI HAR Dataset/test/X_test.txt", widths = ifelse(features$isMeanOrStdFeature, 16, -16), header = FALSE, col.names = (filter(features, isMeanOrStdFeature))$descriptiveVariable)
#add activities and subjects to test data
testdata$subject <- testsubjects$subject
testdata$activity <- testlabels$activity

#combine test and training data
alldata <- rbind(testdata, trainingdata)

#find mean of all variables, grouped by activity and subject
tidydatameans <- alldata %>%    group_by(subject, activity) %>%     summarise_each(funs(mean))
