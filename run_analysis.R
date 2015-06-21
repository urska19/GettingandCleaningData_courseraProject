

#0 Load data.
features_names <- read.table("UCI\ HAR\ Dataset/features.txt")
activity_labels <- read.table("UCI\ HAR\ Dataset/activity_labels.txt")

activity_y_train <- read.table("UCI\ HAR\ Dataset/train/y_train.txt")
features_X_train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
subject_train <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt")

activity_y_test <- read.table("UCI\ HAR\ Dataset/test/y_test.txt")
features_X_test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
subject_test <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt")

#1 Merge train and test sets. Name columns.
subject <- rbind(subject_train, subject_test)
activity <- rbind(activity_y_train, activity_y_test)
features <- rbind(features_X_train, features_X_test)

names(subject)<-c("subject")
names(activity)<- c("activity")
names(features)<- features_names$V2

data <- cbind(subject,activity,features)

#2 Extract mean and std.
columns_mean_std <- grep("mean\\(\\)|std\\(\\)", names(data), ignore.case=TRUE)
data <- data[,c(1,2, columns_mean_std)]

#3 Descriptive names for activity names.
data$activity <- factor(data$activity, labels = activity_labels[,2])

#4 Appropriately labels the data set with descriptive variable names. 
names(data) <- gsub("Acc", "Accelerator", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "frequency", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("tBody", "timeBody", names(data))


# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data$subject <- as.factor(data$subject)
data <- data.table(data)
tidyData <- aggregate(. ~subject + activity, data, mean)
tidyData <- tidyData[order(tidyData$subject,tidyData$activity),]
write.table(tidyData, file = "tidy_data.txt", row.names = FALSE)


