# Getting-and-Cleaning-Data-Course-Project
 
 All the information about Human Activity Recognition Using Smartphones Data Set can be found here:
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
 The task of the project was to create one R script called run_analysis.R that does the following:

    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each    subject.
    
First all the source data sets were read in the appropriate data frames: . 
The train as well as the test data sets were merged using 'rbind()' function.
The function 'cbind()' was used to create one data set from the merged training and the test data sets. To rename the variables in the resulting data set we used the function 'colnames'
To subset the main dataset taking only the measurements on the mean and standard deviation for each measurement, we used the 'grepl()' function
Then using the 'factor()' function and descriptive activity names in the 'features' vector we renamed the ativities in the data set.
With help of the 'gsub()' function we corrected the variable names to make them easier to understand as well as to connect with corresponding measurements. 
Finally, the function 'ddply()' have been taken to get the average of each variable for each activity and each subject creating a tidy data set. 
    
