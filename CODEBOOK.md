# The Codebook

## Description
The tidy data are stored in both csv and txt formats. This is the result of experiments carried out with a group of 30 volunteers (70% was selected for generating the training data and 30% for the test data). Each person performed 06 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using the embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The tidy dataset contains 180 observations (30 volunteers with 6 activities performed by each person). For each record in the dataset it is provided (in order):
* A numeric identifier (ranged from 1 to 30) of the subject who carried out the experiment.
* Its activity label (among these values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* A 79-feature vector with time and frequency domain variables. It is extracted from the original 561-feature factor to represent only the mean and standard deviation for each measurement.

## Raw Data
A full description of raw data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Raw file description:
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

## Data attributes
Data units:
* Features are normalized and bounded within [-1,1].
* The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
* The gyroscope units are rad/seg.

Data are presented as 3-axial signals in the X, Y and Z directions. There are 17 variables that were estimated from these signals but only 02 of them are presented in the tidy data:
* mean(): Mean value
* std(): Standard deviation

## Data cleansing process
Raw data are converted to tidy state following these steps: 
Step 1. Merges the training and the test sets to create one data set
Step 2. Appropriately labels the data set with descriptive variable names
Step 3. Extracts only the measurements on the mean and standard deviation for each measurement.
Step 4. Uses descriptive activity names to name the activities in the data set
Step 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Tidy data set features
Note: prefix 't' to denote time domain signals, 'f' to denote frequency domain signals
[1] "Identifier"	##  An identifier of the subject who carried out the experiment.
[2] "Activity"	## The activity performed by the identified subject
[3] "tBodyAcc-mean()-X"
[4] "tBodyAcc-mean()-Y"
[5] "tBodyAcc-mean()-Z"
[6] "tBodyAcc-std()-X"
[7] "tBodyAcc-std()-Y"
[8] "tBodyAcc-std()-Z"
[9] "tGravityAcc-mean()-X"
[10] "tGravityAcc-mean()-Y"
[11] "tGravityAcc-mean()-Z"
[12] "tGravityAcc-std()-X"
[13] "tGravityAcc-std()-Y"
[14] "tGravityAcc-std()-Z"
[15] "tBodyAccJerk-mean()-X"
[16] "tBodyAccJerk-mean()-Y"
[17] "tBodyAccJerk-mean()-Z"
[18] "tBodyAccJerk-std()-X"
[19] "tBodyAccJerk-std()-Y"
[20] "tBodyAccJerk-std()-Z"
[21] "tBodyGyro-mean()-X"
[22] "tBodyGyro-mean()-Y"
[23] "tBodyGyro-mean()-Z"
[24] "tBodyGyro-std()-X"
[25] "tBodyGyro-std()-Y"
[26] "tBodyGyro-std()-Z"
[27] "tBodyGyroJerk-mean()-X"
[28] "tBodyGyroJerk-mean()-Y"
[29] "tBodyGyroJerk-mean()-Z"
[30] "tBodyGyroJerk-std()-X"
[31] "tBodyGyroJerk-std()-Y"
[32] "tBodyGyroJerk-std()-Z"
[33] "tBodyAccMag-mean()"
[34] "tBodyAccMag-std()"
[35] "tGravityAccMag-mean()"
[36] "tGravityAccMag-std()"
[37] "tBodyAccJerkMag-mean()"
[38] "tBodyAccJerkMag-std()"
[39] "tBodyGyroMag-mean()"
[40] "tBodyGyroMag-std()"
[41] "tBodyGyroJerkMag-mean()"
[42] "tBodyGyroJerkMag-std()"
[43] "fBodyAcc-mean()-X"
[44] "fBodyAcc-mean()-Y"
[45] "fBodyAcc-mean()-Z"
[46] "fBodyAcc-std()-X"
[47] "fBodyAcc-std()-Y"
[48] "fBodyAcc-std()-Z"
[49] "fBodyAcc-meanFreq()-X"
[50] "fBodyAcc-meanFreq()-Y"
[51] "fBodyAcc-meanFreq()-Z"
[52] "fBodyAccJerk-mean()-X"
[53] "fBodyAccJerk-mean()-Y"
[54] "fBodyAccJerk-mean()-Z"
[55] "fBodyAccJerk-std()-X"
[56] "fBodyAccJerk-std()-Y"
[57] "fBodyAccJerk-std()-Z"
[58] "fBodyAccJerk-meanFreq()-X"
[59] "fBodyAccJerk-meanFreq()-Y"
[60] "fBodyAccJerk-meanFreq()-Z"
[61] "fBodyGyro-mean()-X"
[62] "fBodyGyro-mean()-Y"
[63] "fBodyGyro-mean()-Z"
[64] "fBodyGyro-std()-X"
[65] "fBodyGyro-std()-Y"
[66] "fBodyGyro-std()-Z"
[67] "fBodyGyro-meanFreq()-X"
[68] "fBodyGyro-meanFreq()-Y"
[69] "fBodyGyro-meanFreq()-Z"
[70] "fBodyAccMag-mean()"
[71] "fBodyAccMag-std()"
[72] "fBodyAccMag-meanFreq()"
[73] "fBodyBodyAccJerkMag-mean()"
[74] "fBodyBodyAccJerkMag-std()"
[75] "fBodyBodyAccJerkMag-meanFreq()"
[76] "fBodyBodyGyroMag-mean()"
[77] "fBodyBodyGyroMag-std()"
[78] "fBodyBodyGyroMag-meanFreq()"
[79] "fBodyBodyGyroJerkMag-mean()"
[80] "fBodyBodyGyroJerkMag-std()"
[81] "fBodyBodyGyroJerkMag-meanFreq()"
