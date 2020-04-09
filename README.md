# Getting-and-Cleaning-Data-peer-graded
Getting and Cleaning Data Course Project (Peer-graded Assignment)

## Project purpose
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## Data taxonomy
Refer to the CODEBOOK.md for more information on data attributes.

## Step-by-step explanation of the R script (“run_analysis.R”)
The script will perform the following: 
* STEP 0 – Preparation: Download the zip file as provided and unzip it to folder “data” in working directory (If folder 'data' is not existed, then trigger the folder creation). Read all inputs and assign to appropriate objects: “features”, “activities”, “subject.test”, “x.test”, “y.test”, “subject.train”, “x.train”, “y.train”.

* STEP 1 – Merges the training and the test sets to create one data set (object name: “merged”)

* STEP 2 – Appropriately labels the data set with descriptive variable names: Column 1 and 2 are named “Identifier” and “Activity”, respectively. From column 3, they are named by the list of provided features (loaded in object ‘features’)

* STEP 3 – Extracts only the measurements on the mean and standard deviation for each measurement: If the headers do not contain the text as “mean()” or “std()” they will be excluded from the final data set. The first two columns “Activity”, “Identifier” must be included as well.

* STEP 4 – Uses descriptive activity names to name the activities in the data set

* STEP 5 – From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject (using "ddply" in package "plyr"). Finally, export to csv and txt formats and store in folder “data”.
