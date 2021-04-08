# CodeBook #

## total_data ##
This data set is consists of 10299 observations of 69 variables and is a subset of the data collected in an experiments carried out by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.


data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

### modifications of data ###
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.

### Data Structure ###
1. subjectid                  : int : subject
1. type                       : chr : data type, TEST or TRAIN
1. activity                   : chr : Activity accourding activity_label.txt
1. tBodyAcc-mean()-X          : num : Data from X_test.txt and X_train.txt; feachers are normalized and bounded within [-1,1].
1. tBodyAcc-mean()-Y          : num  
1. tBodyAcc-mean()-Z          : num  
1. tBodyAcc-std()-X           : num  
1. tBodyAcc-std()-Y           : num  
1. tBodyAcc-std()-Z           : num  
1. tGravityAcc-mean()-X       : num  
1. tGravityAcc-mean()-Y       : num  
1. tGravityAcc-mean()-Z       : num  
1. tGravityAcc-std()-X        : num  
1. tGravityAcc-std()-Y        : num  
1. tGravityAcc-std()-Z        : num  
1. tBodyAccJerk-mean()-X      : num  
1. tBodyAccJerk-mean()-Y      : num  
1. tBodyAccJerk-mean()-Z      : num  
1. tBodyAccJerk-std()-X       : num  
1. tBodyAccJerk-std()-Y       : num  
1. tBodyAccJerk-std()-Z       : num  
1. tBodyGyro-mean()-X         : num  
1. tBodyGyro-mean()-Y         : num  
1. tBodyGyro-mean()-Z         : num  
1. tBodyGyro-std()-X          : num  
1. tBodyGyro-std()-Y          : num  
1. tBodyGyro-std()-Z          : num  
1. tBodyGyroJerk-mean()-X     : num  
1. tBodyGyroJerk-mean()-Y     : num  
1. tBodyGyroJerk-mean()-Z     : num  
1. tBodyGyroJerk-std()-X      : num  
1. tBodyGyroJerk-std()-Y      : num  
1. tBodyGyroJerk-std()-Z      : num  
1. tBodyAccMag-mean()         : num  
1. tBodyAccMag-std()          : num  
1. tGravityAccMag-mean()      : num  
1. tGravityAccMag-std()       : num  
1. tBodyAccJerkMag-mean()     : num  
1. tBodyAccJerkMag-std()      : num  
1. tBodyGyroMag-mean()        : num  
1. tBodyGyroMag-std()         : num  
1. tBodyGyroJerkMag-mean()    : num  
1. tBodyGyroJerkMag-std()     : num  
1. fBodyAcc-mean()-X          : num  
1. fBodyAcc-mean()-Y          : num  
1. fBodyAcc-mean()-Z          : num  
1. fBodyAcc-std()-X           : num  
1. fBodyAcc-std()-Y           : num  
1. fBodyAcc-std()-Z           : num  
1. fBodyAccJerk-mean()-X      : num  
1. fBodyAccJerk-mean()-Y      : num  
1. fBodyAccJerk-mean()-Z      : num  
1. fBodyAccJerk-std()-X       : num  
1. fBodyAccJerk-std()-Y       : num  
1. fBodyAccJerk-std()-Z       : num  
1. fBodyGyro-mean()-X         : num  
1. fBodyGyro-mean()-Y         : num  
1. fBodyGyro-mean()-Z         : num  
1. fBodyGyro-std()-X          : num  
1. fBodyGyro-std()-Y          : num  
1. fBodyGyro-std()-Z          : num  
1. fBodyAccMag-mean()         : num  
1. fBodyAccMag-std()          : num  
1. fBodyBodyAccJerkMag-mean() : num  
1. fBodyBodyAccJerkMag-std()  : num  
1. fBodyBodyGyroMag-mean()    : num  
1. fBodyBodyGyroMag-std()     : num  
1. fBodyBodyGyroJerkMag-mean(): num  
1. fBodyBodyGyroJerkMag-std() : num

### means_per_subject_and_activity
This data set is consists of 180 observations of 68 variables and is an aggregated data of "total_data" with the average of each variable.

