This code book describes the variables in the tidy data set and the transformation done to the data.

Data and the Transformation performed:

One of the most exciting areas in all of data science right now is wearable computing - see for example  this article . 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the 
Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 The R script called run_analysis.R performs the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Variables in the tidy data set:

"tBodyAccJerkMeanZ" 
"tBodyAccJerkStandardDeviationX" 
"tBodyAccJerkStandardDeviationY" 
"tBodyAccJerkStandardDeviationZ" 
"tBodyGyroMeanX" 
"tBodyGyroMeanY" 
"tBodyGyroMeanZ" 
"tBodyGyroStandardDeviationX" 
"tBodyGyroStandardDeviationY" 
"tBodyGyroStandardDeviationZ" 
"tBodyGyroJerkMeanX" 
"tBodyGyroJerkMeanY" 
"tBodyGyroJerkMeanZ" 
"tBodyGyroJerkStandardDeviationX" 
"tBodyGyroJerkStandardDeviationY" 
"tBodyGyroJerkStandardDeviationZ" 
"tBodyAccMagMean" 
"tBodyAccMagStandardDeviation" 
"tGravityAccMagMean" 
"tGravityAccMagStandardDeviation" 
"tBodyAccJerkMagMean" 
"tBodyAccJerkMagStandardDeviation" 
"tBodyGyroMagMean" 
"tBodyGyroMagStandardDeviation" 
"tBodyGyroJerkMagMean" 
"tBodyGyroJerkMagStandardDeviation" 
"fBodyAccMeanX" 
"fBodyAccMeanY" 
"fBodyAccMeanZ" 
"fBodyAccStandardDeviationX" 
"fBodyAccStandardDeviationY" 
"fBodyAccStandardDeviationZ" 
"fBodyAccJerkMeanX" 
"fBodyAccJerkMeanY" 
"fBodyAccJerkMeanZ" 
"fBodyAccJerkStandardDeviationX" 
"fBodyAccJerkStandardDeviationY" 
"fBodyAccJerkStandardDeviationZ" 
"fBodyGyroMeanX" 
"fBodyGyroMeanY" 
"fBodyGyroMeanZ" 
"fBodyGyroStandardDeviationX" 
"fBodyGyroStandardDeviationY" 
"fBodyGyroStandardDeviationZ" 
"fBodyAccMagMean" 
"fBodyAccMagStandardDeviation" 
"fBodyAccJerkMagMean" 
"fBodyAccJerkMagStandardDeviation" 
"fBodyGyroMagMean" 
"fBodyGyroMagStandardDeviation" 
"fBodyGyroJerkMagMean" 
"fBodyGyroJerkMagStandardDeviation"

