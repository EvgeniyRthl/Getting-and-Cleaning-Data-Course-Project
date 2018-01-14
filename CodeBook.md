Getting and Cleaning Data Course Project

Source Data

The data for the project can be obtained under the link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The complete list of variables of each feature vector as well as the description of selected variables are available in 'features.txt' and in 'features_info.text' files of source data file.

Variables in order of appearance in the script

'subjecttest', 'xtest', 'ytest' - test sets
'subjecttrain', 'xtrain', 'ytrain' - train sets
'activitylabels' - class labels with their activity name
'features' - data frame with the list of all features
'columnNames' - Vector with names of the variables
'trainDataset' - combined train data set
'testDataset' - combined test data set
'dataset' - merged data set
'tidyDataset' -tidy data set with the average of each variable for each activity and each subject

The variables in the resulting tidyDataset:

Identifiers

"subject" - Subject identifier

"activity" - Activity identifier with following possible values:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Average of the measurements

"timeBodyAccelerometerMeanValueX"
"timeBodyAccelerometerMeanValueY"
"timeBodyAccelerometerMeanValueZ"
"timeBodyAccelerometerStandardDeviationX"
"timeBodyAccelerometerStandardDeviationY"
"timeBodyAccelerometerStandardDeviationZ"
"timeGravityAccelerometerMeanValueX"
"timeGravityAccelerometerMeanValueY"
"timeGravityAccelerometerMeanValueZ"
"timeGravityAccelerometerStandardDeviationX"
"timeGravityAccelerometerStandardDeviationY"
"timeGravityAccelerometerStandardDeviationZ"
"timeBodyAccelerometerJerkMeanValueX"
"timeBodyAccelerometerJerkMeanValueY"
"timeBodyAccelerometerJerkMeanValueZ"
"timeBodyAccelerometerJerkStandardDeviationX"
"timeBodyAccelerometerJerkStandardDeviationY"
"timeBodyAccelerometerJerkStandardDeviationZ"
"timeBodyGyroscopeMeanValueX"
"timeBodyGyroscopeMeanValueY"
"timeBodyGyroscopeMeanValueZ"
"timeBodyGyroscopeStandardDeviationX"
"timeBodyGyroscopeStandardDeviationY"
"timeBodyGyroscopeStandardDeviationZ"
"timeBodyGyroscopeJerkMeanValueX"
"timeBodyGyroscopeJerkMeanValueY"
"timeBodyGyroscopeJerkMeanValueZ"
"timeBodyGyroscopeJerkStandardDeviationX"
"timeBodyGyroscopeJerkStandardDeviationY"
"timeBodyGyroscopeJerkStandardDeviationZ"
"timeBodyAccelerometerMagnitudeMeanValue"
"timeBodyAccelerometerMagnitudeStandardDeviation"
"timeGravityAccelerometerMagnitudeMeanValue"
"timeGravityAccelerometerMagnitudeStandardDeviation"
"timeBodyAccelerometerJerkMagnitudeMeanValue"
"timeBodyAccelerometerJerkMagnitudeStandardDeviation"
"timeBodyGyroscopeMagnitudeMeanValue"
"timeBodyGyroscopeMagnitudeStandardDeviation"
"timeBodyGyroscopeJerkMagnitudeMeanValue"
"timeBodyGyroscopeJerkMagnitudeStandardDeviation"
"freqBodyAccelerometerMeanValueX"
"freqBodyAccelerometerMeanValueY"
"freqBodyAccelerometerMeanValueZ"
"freqBodyAccelerometerStandardDeviationX"
"freqBodyAccelerometerStandardDeviationY"
"freqBodyAccelerometerStandardDeviationZ"
"freqBodyAccelerometerMeanValueFrequencyX"
"freqBodyAccelerometerMeanValueFrequencyY"
"freqBodyAccelerometerMeanValueFrequencyZ"
"freqBodyAccelerometerJerkMeanValueX"
"freqBodyAccelerometerJerkMeanValueY"
"freqBodyAccelerometerJerkMeanValueZ"
"freqBodyAccelerometerJerkStandardDeviationX"
"freqBodyAccelerometerJerkStandardDeviationY"
"freqBodyAccelerometerJerkStandardDeviationZ"
"freqBodyAccelerometerJerkMeanValueFrequencyX"
"freqBodyAccelerometerJerkMeanValueFrequencyY"
"freqBodyAccelerometerJerkMeanValueFrequencyZ"
"freqBodyGyroscopeMeanValueX"
"freqBodyGyroscopeMeanValueY"
"freqBodyGyroscopeMeanValueZ"
"freqBodyGyroscopeStandardDeviationX"
"freqBodyGyroscopeStandardDeviationY"
"freqBodyGyroscopeStandardDeviationZ"
"freqBodyGyroscopeMeanValueFrequencyX"
"freqBodyGyroscopeMeanValueFrequencyY"
"freqBodyGyroscopeMeanValueFrequencyZ"
"freqBodyAccelerometerMagnitudeMeanValue"
"freqBodyAccelerometerMagnitudeStandardDeviation"
"freqBodyAccelerometerMagnitudeMeanValueFrequency"
"freqBodyAccelerometerJerkMagnitudeMeanValue"
"freqBodyAccelerometerJerkMagnitudeStandardDeviation"
"freqBodyAccelerometerJerkMagnitudeMeanValueFrequency"
"freqBodyGyroscopeMagnitudeMeanValue"
"freqBodyGyroscopeMagnitudeStandardDeviation"
"freqBodyGyroscopeMagnitudeMeanValueFrequency"
"freqBodyGyroscopeJerkMagnitudeMeanValue"
"freqBodyGyroscopeJerkMagnitudeStandardDeviation"
"freqBodyGyroscopeJerkMagnitudeMeanValueFrequency"
