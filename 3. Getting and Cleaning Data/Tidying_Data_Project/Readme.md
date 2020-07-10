# Peer-graded Assignment: Getting and Cleaning Data Project

## Dataset
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">Human Activity Recognition Using Smartphones</a>

actual data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.ziphttps://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Files:
* #### run_analysis.R:
  1. Download the zip file, unzip it an delete the zip file.
  2. Read the feature list, activity list file, variable, labels and subject files of both test and train folder.
  3. Rename the columns of variable tables with feature name. From these tables xtract the required features.
  4. Merge activity tables with activity list.
  5. Finally merge test, subject and activity list. Do this for train data also.
  6. Merge test and train data.
  7. From the data set in step 6, creates a second, independent tidy data set with the average of each variable for each activity and each subject
  
* #### codebook.md:
  Informations of variables and their units and the output. 
