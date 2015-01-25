#1.Merges the training and the test sets to create one data set.
###############################################################
features<- read.table("features.txt")

xtest<- read.table("./test/X_test.txt", header=FALSE)
xtrain<- read.table("./train/X_train.txt", header=FALSE)
colnames(xtest)<- features[,2]
colnames(xtrain)<- features[,2]

ytest<- read.table("./test/Y_test.txt", header=FALSE)
ytrain<- read.table("./train/Y_train.txt", header=FALSE)
colnames(ytest)<- "activity_id"
colnames(ytrain)<- "activity_id"

stest<- read.table("./test/subject_test.txt", header=FALSE)
strain<- read.table("./train/subject_train.txt", header=FALSE)
colnames(stest)<- "subject_id"
colnames(strain)<- "subject_id"

xtest<- cbind(xtest, stest)
xtrain<- cbind(xtrain, strain)

xytest<- cbind(xtest, ytest)
xytrain<- cbind(xtrain, ytrain)

df<- rbind(xytest,xytrain)

#2.Extracts only the measurements on the mean and standard deviation for each measurement
rexp_pattern<- "(mean\\(\\)|std\\(\\))"
subset_match<- grepl(rexp_pattern, features[,2])
df_subset<- df[ ,subset_match]

#3.Uses descriptive activity names to name the activities in the data set
activity_labels<- read.table("activity_labels.txt")
colnames(activity_labels) <- c("activity_id", "activity")
full_df<- merge(df_subset, activity_labels, by.x="activity_id", by.y="activity_id")

#4.Appropriately labels the data set with descriptive variable names. 
names(full_df) <- gsub("[)(-]", "", names(full_df))
names(full_df) <- gsub('std',"StandardDeviation", names(full_df))
names(full_df) <- gsub('mean',"Mean", names(full_df))
names(full_df) <- gsub('\\,',"", names(full_df))
names(full_df) <- gsub('gravity',"Gravity", names(full_df))
names(full_df) <- gsub('BodyBody',"Body", names(full_df))

#5.creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidydataset_df <- aggregate(full_df[ ,2:67]
                            , list(subject_id = full_df$subject_id
                            , activity = full_df$activity)
                            , mean) 
write.table(file="tidy.txt", tidydataset_df, row.name=FALSE)
