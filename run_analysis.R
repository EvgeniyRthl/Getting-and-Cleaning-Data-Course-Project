###   Getting and Cleaning Data Course Project   ###

# R script called run_analysis.R that does the following.

# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names.
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Preliminary steps

rm(list=ls())
library(data.table)
library(plyr)

# Download zip file containing the data for the project

if(!file.exists("./Getting and Cleaning Data")){dir.create("./Getting and Cleaning Data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Getting and Cleaning Data/dataset.zip")

setwd("./Getting and Cleaning Data")

# Unzip the dataset.zip file 

if (!file.exists("UCI HAR Dataset")) {unzip('dataset.zip')}

# Read the test datasets

subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt")
xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt")

# Read the training datasets

subjecttrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt")

# Activity labels and features

activitylabels<-read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activitylabels)  = c('activityClass','activityName')

features<-read.table("./UCI HAR Dataset/features.txt",as.is = TRUE)

# Step 1. Merge the training and the test sets to create one data set

trainDataset<-cbind(subjecttrain, xtrain, ytrain)
testDataset<-cbind(subjecttest, xtest, ytest)

dataset<-rbind(trainDataset,testDataset)
colnames(dataset)<-c("subject", features[,2], "activity")

# Step 2. Extract only the measurements on the mean and standard deviation for each measurement

dataset<-dataset[, grepl("subject|mean|std|activity",colnames(dataset))]

# Step 3. Uses descriptive activity names to name the activities in the data set

dataset$activity<-factor(dataset$activity, levels =activitylabels[,1], labels = activitylabels[,2])

# Step 4. Appropriately label the data set with descriptive variable names

columnNames<-colnames(dataset)

columnNames<-gsub("-","",columnNames)
columnNames<-gsub("\\(\\)","",columnNames)
columnNames<-gsub("^t","time",columnNames)
columnNames<-gsub("^f","freq",columnNames)
columnNames<-gsub("Acc","Accelerometer",columnNames)
columnNames<-gsub("mean","MeanValue",columnNames)
columnNames<-gsub("std","StandardDeviation",columnNames)
columnNames<-gsub("Gyro","Gyroscope",columnNames)
columnNames<-gsub("Mag","Magnitude",columnNames)
columnNames<-gsub("Freq","Frequency",columnNames)
columnNames<-gsub("BodyBody","Body",columnNames)

colnames(dataset)<-columnNames


# 5.Creating of independent tidy data set with the average of each variable for each activity and each subject.                  

tidyDataset <- ddply(dataset, c("subject","activity"), colwise(mean))
write.table(tidyDataset, file = "tidy_dataset_average.txt")

