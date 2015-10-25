Instruction List
================
This instruction list gives the reader the steps needed to obtain a tidy data set as required by the Course Project for the Coursera course "Getting and Cleaning Data" in Octiber 2015.

1 Manual preparatory steps
1.1 Download the file "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and extract its conttents to the R working directory. Ensure that the "UCI HAR Dataset" folder is a direct child of the R workding Directory.
1.2 Execute the R script "run_analysis.R" downloaded from the Github Repository "" in the R Working directory
2 Steps done by the R script "run_analysis.R"...
2.1 Load the library dplyr
2.2 Read the features file UCI HAR Dataset/features.txt into the variable features
2.3 Find the features that have mean or standard deviation, by identifying those features that have the words "-mean()" or "-std()" in them
2.4 Make descriptive variable names out of these features by replacing "-", "()" with "" and making mean and std as Camel-Case
2.5 Read the activity labels from the file UCI HAR Dataset/activity_labels.txt
2.6 Read the training subjects from the file UCI HAR Dataset/train/subject_train.txt
2.7 Read the training labels from the file UCI HAR Dataset/train/y_train.txt
2.8 Merge the training labels with the activity labels
2.9 Read the training data in the file UCI HAR Dataset/train/X_train.txt which is a fixed width file. We will read only those columns identified in Step 2.3, and assign the desctiptive variable names from step 2.4
2.10 Add Activities and Subjects from Steps 2.8 and 2.6 respectively, as variables (columns) to the training data
2.11 Read the test subjects from the file UCI HAR Dataset/test/subject_test.txt
2.12 Read the test labels from the file UCI HAR Dataset/test/y_test.txt
2.13 Merge the test labels with the activity labels
2.14 Read the test data in the file UCI HAR Dataset/test/X_test.txt which is a fixed width file. We will read only those columns identified in Step 2.3, and assign the desctiptive variable names from step 2.4
2.15 Add Activities and Subjects from Steps 2.13 and 2.11 respectively, as variables (columns) to the test data
2.16 Combine test and training data into a single dataset "alldata"
2.17 Find mean of all variables, grouped by activity and subject; as a tidy dataset "tidydatameans"

Code Book
=========
The code book below gives each variable in the dataset, its data type and unit; and the description



Study Design
============

