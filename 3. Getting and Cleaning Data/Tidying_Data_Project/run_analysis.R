library(dplyr)

#####################################################
# download the file, unzip and delete the zip file
#####################################################
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "dataset.zip", "curl")

if(file.exists("dataset.zip")) {
  unzip("dataset.zip")
} else {
  stop("zip file not found")
}

file.remove("dataset.zip")


#####################################################
# read the files and manipulate them
#####################################################
baseDirectory <- "./UCI HAR Dataset/"

activityLabels <- read.table(paste(baseDirectory, "activity_labels.txt", sep = ""))
colnames(activityLabels) <- c("activityId", "activityName")

features <- read.table(paste(baseDirectory, "features.txt", sep = ""))
colnames(features) <- c("id", "featureName")
features <- mutate(features, featureName = gsub("BodyBody", "Body", featureName))
requiredFeatures <- filter(features, grepl("(^.*mean\\(\\).*$)|(^.*std\\(\\).*$)", featureName))
  
# test: variable
testVariable <- read.table(paste(baseDirectory, "test/X_test.txt", sep = ""))
colnames(testVariable) <- features$featureName
testVariable <- testVariable[, requiredFeatures$featureName]
  
# test: activity labels
testActivity <- read.table(paste(baseDirectory, "test/y_test.txt", sep = ""), col.names = "activityId")

# test: detail of subject
testSubjects <- read.table(paste(baseDirectory, "test/subject_test.txt", sep = ""), col.names = "subject")

# train: variable
trainVariable <- read.table(paste(baseDirectory, "train/X_train.txt", sep = ""))
colnames(trainVariable) <- features$featureName
trainVariable <- trainVariable[, requiredFeatures$featureName]

# activity labels
trainActivity <- read.table(paste(baseDirectory, "train/y_train.txt", sep = ""), col.names = "activityId")

# detail of subject
trainSubjects <- read.table(paste(baseDirectory, "train/subject_train.txt", sep = ""), col.names = "subject")

# merge activity files
testActivity <- merge(testActivity, activityLabels, by = "activityId")
trainActivity <- merge(trainActivity, activityLabels, by = "activityId")

# finalize test and train data
testDataFinal <- cbind(testActivity, testSubjects, testVariable)
trainDataFinal <- cbind(trainActivity, trainSubjects, trainVariable)

# merge test and train data
dataSet <- rbind(testDataFinal, trainDataFinal) %>% select(-activityId)


#####################################################
# rename the variables
#####################################################
names(dataSet) <- gsub("Acc", "Accelerometer", names(dataSet))
names(dataSet) <- gsub("Gyro", "Gyroscope", names(dataSet))
names(dataSet) <- gsub("Mag", "Magnitude", names(dataSet))
names(dataSet) <- gsub("^t", "Time", names(dataSet))
names(dataSet) <- gsub("^f", "Frequency", names(dataSet))
names(dataSet) <- gsub("tBody", "TimeBody", names(dataSet))
names(dataSet) <- gsub("angle", "Angle", names(dataSet))
names(dataSet) <- gsub("gravity", "Gravity", names(dataSet))


#####################################################
# make another dataSet with the average of each 
# variable for each activity and each subject.
#####################################################
dataSet2 <- dataSet %>% 
  group_by(subject, activityName) %>%
  summarise_all(funs(mean))


#####################################################
# write the data
#####################################################
write.table(dataSet, "TidyData.txt")
write.table(dataSet2, "TidyDataMean.txt")