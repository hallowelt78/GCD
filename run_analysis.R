# run_analysis.R
# Getting and Cleaning Data Course Project
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Download file and extract it

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
localfile <- "UCI_DATA_SET.zip"
if (!file.exists(localfile)) {
  # if file not exists
  download.file(url,localfile, "curl")
  unzip(localfile) ## unzip the file
}


#######################
# A. Load factor tables
#

# load activity_labels.txt
activity_level <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activity_level) <- c("id","activity")

# load features.txt
features <- read.table("./UCI HAR Dataset/features.txt")

# features vector with mean(), std()
filteredfeatures <- grep("-mean\\(|-std\\(",features$V2)

#######################
# B. Test Data

# load subject_test.txt and prepare test subject sets
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_subject$type <- "TEST" # set observation type to TEST
colnames(test_subject) <- c("subjectid","type") # rename columns

# load X_test.txt and rename column names
X_test       <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(X_test) <- features$V2

# load y_test.txt (test activity) data 
Y_test       <- read.table("./UCI HAR Dataset/test/y_test.txt")


#map activity number with activity name
test_activity <- data.frame(activity_level$activity[Y_test$V1])
colnames(test_activity) <- c("activity") # rename column

# generate sub data set test_data

test_data <- cbind(test_subject,
                   test_activity,
                   X_test[,filteredfeatures]
)


#######################
# C. Train Data

# load test subjects and prepare test subject sets
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_subject$type <- "TRAIN"  # set observation type to TEST
colnames(train_subject) <- c("subjectid","type") # rename columns

# load test data and rename columne names
X_train       <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(X_train) <- features$V2

# load test activity data 
Y_train       <- read.table("./UCI HAR Dataset/train/y_train.txt")


#map activity number with activity name
train_activity <- data.frame(activity_level$activity[Y_train$V1])
colnames(train_activity) <- c("activity") # rename column

# generate sub data set test
train_data <- cbind(train_subject,
                    train_activity,
                    X_train[,filteredfeatures]
                    )

#######################
# D. Merger train and test data
total_data <- rbind(train_data, test_data)


#######################
# E .. New data set 

# aggregation of the data with the average of each variable for each activity and each subject 
# means_per_subject_and_activity <- aggregate(total_data[,4:69],list(subjectid = total_data$subjectid, activity = total_data$activity), mean)

# Alternative with library(dplyr)
library(dplyr)
means_per_subject_and_activity <- total_data %>% group_by(subjectid,type,activity) %>% summarise_all(mean)

#######################
# F .. write the tidy data set (E) in a file

resultfilename <- "mytidydataset.txt"
write.table(means_per_subject_and_activity, resultfilename, row.name=FALSE)


# G ... clean up
rm(activity_level)
rm(features)
rm(test_activity)
rm(test_subject)
rm(train_activity)
rm(train_subject)
rm(X_test)
rm(Y_test)
rm(X_train)
rm(Y_train)
rm(test_data)
rm(train_data)
rm(filteredfeatures)
rm(localfile)
rm(url)
rm(resultfilename)
