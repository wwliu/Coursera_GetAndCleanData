# Coursera, Getting and Cleaning Data, Assignment 1
# File: R syntax
# Date: 23-05-2014
# Version: 1.0
# By: Wai-Wah Liu

##########################################################################
##### 1.Merges the training and the test sets to create one data set #####
##########################################################################
setwd("H:\\Coursera\\Data Science Track\\03_Getting and cleaning data\\week 3\\project 1\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test")

################# Prepare test data set #################
# A: Read in the subject numbers of test set
testSubjectNr <- read.table("subject_test.txt", header=FALSE, as.is=TRUE)
colnames(testSubjectNr)[1] <- "subject"

# B: Read in the actual test data
testData <- read.table("X_test.txt", header=FALSE, as.is=TRUE)

# C: Read in activity subjects were performing
testActivity <- read.table("y_test.txt", header=FALSE)
colnames(testActivity)[1] <- "label"

# D: Add a tag that this is from the test set
type <- factor(rep(1, nrow(testData)), levels=1:2, labels=c("test","training"))

# E: Merge data sets into final test set
testDataFinal <- cbind(testSubjectNr, testActivity, type, testData)

# F: Remove objects to clear memory
rm(testActivity, testData, testSubjectNr, type)

################# Prepare training data set #################
setwd("H:\\Coursera\\Data Science Track\\03_Getting and cleaning data\\week 3\\project 1\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train")

# H: Read in the subject numbers of training set
trainSubjectNr <- read.table("subject_train.txt", header=FALSE, as.is=TRUE)
colnames(trainSubjectNr)[1] <- "subject"

# I: Read in the actual training data
trainData <- read.table("X_train.txt", header=FALSE, as.is=TRUE)

# J: Read in activity subjects were performing
trainActivity <- read.table("y_train.txt", header=FALSE)
colnames(trainActivity)[1] <- "label"

# K: Add a tag that this is from the training set
type <- factor(rep(2,nrow(trainSubjectNr)), levels=1:2, labels=c("test","training"))

# L: Merge data sets into final training set
trainDataFinal <- cbind(trainSubjectNr, trainActivity, type, trainData)

# M: Remove objects to clear memory
rm(trainActivity, trainData, trainSubjectNr, type)
 
# N: Merge both the test set and training set
testAndTrainMerged <- rbind(testDataFinal, trainDataFinal)

# O: Remove objects to clear memory
rm(testDataFinal, trainDataFinal)


##########################################################################
########### 2.Extracts only the measurements on the mean and #############
############## standard deviation for each measurement.  #################
##########################################################################

# A: Read in variable names
varNames <- read.table("H:\\Coursera\\Data Science Track\\03_Getting and cleaning data\\week 3\\project 1\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\features.txt",
                       header=FALSE, as.is=TRUE)

colnames(testAndTrainMerged)[4:564] <- varNames[ ,2]

# B: These variables measure either the mean or standard deviation
meanVars <- grep(pattern="mean", names(testAndTrainMerged))
stdVars <- grep(pattern="std", names(testAndTrainMerged))
keepVars <- c(meanVars, stdVars)

# C: Keep only appropriate variables
testAndTrainMerged <- testAndTrainMerged[ ,c(1:3, keepVars)]

############################################################################
# 3.Uses descriptive activity names to name the activities in the data set #
############################################################################

# A: add factor label to type of activity
testAndTrainMerged[ ,2] <- factor(testAndTrainMerged[ ,2], levels=1:6, labels=
                                    c("walking","walking upstairs","walking downstairs","sitting","standing","laying"))

##########################################################################
## 4.Appropriately labels the data set with descriptive activity names ###
##########################################################################

# A: Readable tidy variable names by converting to lower case
names(testAndTrainMerged) <- tolower(names(testAndTrainMerged))

# B: Readable tidy variable names by removing "signs" / "symbols"
names(testAndTrainMerged)[4:82] <- gsub(pattern="\\()-", replacement = ".", names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="\\-", replacement = ".", names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="\\()$", replacement = "", names(testAndTrainMerged)[4:82])

# C: Readable tidy variable names by nicely seperating the "parts"
names(testAndTrainMerged)[4:82] <- gsub(pattern="^t", replacement = "t.", names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="^f", replacement = "f.", names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="body", replacement = "body.", fixed=TRUE, names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="gravity", replacement = "gravity.", fixed=TRUE, names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="acc", replacement = "acc.", fixed=TRUE, names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="gyro", replacement = "gyro.", fixed=TRUE, names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="jerk", replacement = "jerk.", fixed=TRUE, names(testAndTrainMerged)[4:82])
names(testAndTrainMerged)[4:82] <- gsub(pattern="..", replacement = ".", fixed=TRUE, names(testAndTrainMerged)[4:82])



##########################################################################
######### 5.Creates a second, independent tidy data set with the #########
###### average of each variable for each activity and each subject ####### 
##########################################################################

# A:Create data set with means for all variables by subject and activity
attach(testAndTrainMerged)
tidySet <- aggregate(testAndTrainMerged[ ,-c(2,3)], by=list(subject,label), 
                    FUN=mean)
detach(testAndTrainMerged)

# B: Remove duplicate column and rename
tidySet <- tidySet[ ,-3]
colnames(tidySet)[1] <- "subject"
colnames(tidySet)[2] <- "label"

# C: Add a tag for test or training set
tidySet$type <- factor(rep(2,nrow(tidySet)), levels=1:2, 
                       labels=c("test","training"))

subjectsTestdata <- c(2, 4, 9, 10, 12, 13, 18, 20, 24)

tidySet$type[tidySet$subject %in% subjectsTestdata] <- "test"

tidySet <- tidySet[ ,c(1,2,82,3:81)]

# D: Save the R object as a data set (csv file)
write.table(tidySet, "H://Coursera//Data Science Track//03_Getting and cleaning data//week 3//project 1//tidySet.csv",
            sep=";", row.names=FALSE)
