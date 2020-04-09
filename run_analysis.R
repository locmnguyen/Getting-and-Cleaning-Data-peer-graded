### GETTING AND CLEANING DATA COURSE
### (PEER-GRADED ASSIGNMENT)

### PREPARATION
# Download the zip file as provided and unzip it to folder 'data' in working directory. 
# If folder 'data' is not existed, then trigger the folder creation
if(!file.exists("./data")) dir.create("./data")
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")) dir.create("./data")
download.file(URL, destfile = "./data/download.zip", method = "curl")
unzip("./data/download.zip", exdir = "./data")

# Read all input and assign to appropriate objects
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

subject.test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)
x.test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", stringsAsFactors = FALSE)
y.test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)

subject.train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)
x.train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", stringsAsFactors = FALSE)
y.train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)

### STEP 1: Merges the training and the test sets to create one data set
merged <- cbind(rbind(subject.test, subject.train), rbind(y.test, y.train), rbind(x.test, x.train))

### STEP 2: Appropriately labels the data set with descriptive variable names.
colnames(merged)[1:2] <- c("Identifier", "Activity")
colnames(merged)[3:ncol(merged)] <- features[, 2]

### STEP 3: Extracts only the measurements on the mean and standard deviation for each measurement
merged <- merged[, grepl("mean()|std()|Activity|Identifier", colnames(merged))]

### STEP 4: Uses descriptive activity names to name the activities in the data set
merged$Activity <- factor(merged$Activity, levels = activities[, 1], labels = activities[, 2])

### STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
tidy <- ddply(merged, .(Identifier, Activity), .fun=function(x) { colMeans(x[ ,-c(1:2)]) }) #not calculate mean for columns 'Identifier' and 'Activity'
# Output
write.csv(tidy, "./data/tidydata.txt", row.names = FALSE)
write.csv(tidy, "./data/tidydata.csv", row.names = FALSE)