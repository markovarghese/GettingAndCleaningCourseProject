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

The code book below gives each variable in the dataset, its data type and unit; and the description. 

1. Variable: subject; Data Type:  int representing the human who produced the measurement
2. Variable: activity; Data Type:  String. Type of physical activity that produced
3. Variable: tBodyAccMeanX; Data Type:  float with no Unit of Measurement
4. Variable: tBodyAccMeanY; Data Type:  float with no Unit of Measurement
5. Variable: tBodyAccMeanZ; Data Type:  float with no Unit of Measurement
6. Variable: tBodyAccStdX; Data Type:  float with no Unit of Measurement
7. Variable: tBodyAccStdY; Data Type:  float with no Unit of Measurement
8. Variable: tBodyAccStdZ; Data Type:  float with no Unit of Measurement
9. Variable: tGravityAccMeanX; Data Type:  float with no Unit of Measurement
10. Variable: tGravityAccMeanY; Data Type:  float with no Unit of Measurement
11. Variable: tGravityAccMeanZ; Data Type:  float with no Unit of Measurement
12. Variable: tGravityAccStdX; Data Type:  float with no Unit of Measurement
13. Variable: tGravityAccStdY; Data Type:  float with no Unit of Measurement
14. Variable: tGravityAccStdZ; Data Type:  float with no Unit of Measurement
15. Variable: tBodyAccJerkMeanX; Data Type:  float with no Unit of Measurement
16. Variable: tBodyAccJerkMeanY; Data Type:  float with no Unit of Measurement
17. Variable: tBodyAccJerkMeanZ; Data Type:  float with no Unit of Measurement
18. Variable: tBodyAccJerkStdX; Data Type:  float with no Unit of Measurement
19. Variable: tBodyAccJerkStdY; Data Type:  float with no Unit of Measurement
20. Variable: tBodyAccJerkStdZ; Data Type:  float with no Unit of Measurement
21. Variable: tBodyGyroMeanX; Data Type:  float with no Unit of Measurement
22. Variable: tBodyGyroMeanY; Data Type:  float with no Unit of Measurement
23. Variable: tBodyGyroMeanZ; Data Type:  float with no Unit of Measurement
24. Variable: tBodyGyroStdX; Data Type:  float with no Unit of Measurement
25. Variable: tBodyGyroStdY; Data Type:  float with no Unit of Measurement
26. Variable: tBodyGyroStdZ; Data Type:  float with no Unit of Measurement
27. Variable: tBodyGyroJerkMeanX; Data Type:  float with no Unit of Measurement
28. Variable: tBodyGyroJerkMeanY; Data Type:  float with no Unit of Measurement
29. Variable: tBodyGyroJerkMeanZ; Data Type:  float with no Unit of Measurement
30. Variable: tBodyGyroJerkStdX; Data Type:  float with no Unit of Measurement
31. Variable: tBodyGyroJerkStdY; Data Type:  float with no Unit of Measurement
32. Variable: tBodyGyroJerkStdZ; Data Type:  float with no Unit of Measurement
33. Variable: tBodyAccMagMean; Data Type:  float with no Unit of Measurement
34. Variable: tBodyAccMagStd; Data Type:  float with no Unit of Measurement
35. Variable: tGravityAccMagMean; Data Type:  float with no Unit of Measurement
36. Variable: tGravityAccMagStd; Data Type:  float with no Unit of Measurement
37. Variable: tBodyAccJerkMagMean; Data Type:  float with no Unit of Measurement
38. Variable: tBodyAccJerkMagStd; Data Type:  float with no Unit of Measurement
39. Variable: tBodyGyroMagMean; Data Type:  float with no Unit of Measurement
40. Variable: tBodyGyroMagStd; Data Type:  float with no Unit of Measurement
41. Variable: tBodyGyroJerkMagMean; Data Type:  float with no Unit of Measurement
42. Variable: tBodyGyroJerkMagStd; Data Type:  float with no Unit of Measurement
43. Variable: fBodyAccMeanX; Data Type:  float with no Unit of Measurement
44. Variable: fBodyAccMeanY; Data Type:  float with no Unit of Measurement
45. Variable: fBodyAccMeanZ; Data Type:  float with no Unit of Measurement
46. Variable: fBodyAccStdX; Data Type:  float with no Unit of Measurement
47. Variable: fBodyAccStdY; Data Type:  float with no Unit of Measurement
48. Variable: fBodyAccStdZ; Data Type:  float with no Unit of Measurement
49. Variable: fBodyAccJerkMeanX; Data Type:  float with no Unit of Measurement
50. Variable: fBodyAccJerkMeanY; Data Type:  float with no Unit of Measurement
51. Variable: fBodyAccJerkMeanZ; Data Type:  float with no Unit of Measurement
52. Variable: fBodyAccJerkStdX; Data Type:  float with no Unit of Measurement
53. Variable: fBodyAccJerkStdY; Data Type:  float with no Unit of Measurement
54. Variable: fBodyAccJerkStdZ; Data Type:  float with no Unit of Measurement
55. Variable: fBodyGyroMeanX; Data Type:  float with no Unit of Measurement
56. Variable: fBodyGyroMeanY; Data Type:  float with no Unit of Measurement
57. Variable: fBodyGyroMeanZ; Data Type:  float with no Unit of Measurement
58. Variable: fBodyGyroStdX; Data Type:  float with no Unit of Measurement
59. Variable: fBodyGyroStdY; Data Type:  float with no Unit of Measurement
60. Variable: fBodyGyroStdZ; Data Type:  float with no Unit of Measurement
61. Variable: fBodyAccMagMean; Data Type:  float with no Unit of Measurement
62. Variable: fBodyAccMagStd; Data Type:  float with no Unit of Measurement
63. Variable: fBodyBodyAccJerkMagMean; Data Type:  float with no Unit of Measurement
64. Variable: fBodyBodyAccJerkMagStd; Data Type:  float with no Unit of Measurement
65. Variable: fBodyBodyGyroMagMean; Data Type:  float with no Unit of Measurement
66. Variable: fBodyBodyGyroMagStd; Data Type:  float with no Unit of Measurement
67. Variable: fBodyBodyGyroJerkMagMean; Data Type:  float with no Unit of Measurement
68. Variable: fBodyBodyGyroJerkMagStd; Data Type:  float with no Unit of Measurement



