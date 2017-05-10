## create one R script called run_analysis.R that does the following.
rm(list = ls())
if(!require(reshape2)){ install.packages("reshape2")}
library(reshape2)

## 1. Merges the training and the test sets to create one data set.
### load train and test data
subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train = read.table("./UCI HAR Dataset/train/X_train.txt")
y_train = read.table("./UCI HAR Dataset/train/y_train.txt")

subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test = read.table("./UCI HAR Dataset/test/X_test.txt")
y_test = read.table("./UCI HAR Dataset/test/y_test.txt")

### add column names
names(subject_train) = "subjectID"
names(subject_test) = "subjectID"
names(y_train) = "activity"
names(y_test) = "activity"

features = read.table("./UCI HAR Dataset/features.txt")[,2]
names(X_train) = features
names(X_test) = features

train = cbind(subject_train, y_train, X_train)
test = cbind(subject_test, y_test, X_test)
combined = rbind(train, test)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
idx = c(TRUE, TRUE, grepl("mean|std", features))
combined = combined[,idx]

## 3. Uses descriptive activity names to name the activities in the data set
activity_labels = read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

## 4. Appropriately labels the data set with descriptive variable names.
combined[,2] = activity_labels[combined[,2]]

## 5. From the data set in step 4, creates a second, independent tidy data set with the average of
##    each variable for each activity and each subject.
melted = melt(combined, id=c("subjectID","activity"))
tidy = dcast(melted, subjectID+activity ~ variable, mean)
write.csv(tidy, "tidy.csv", row.names=FALSE)
