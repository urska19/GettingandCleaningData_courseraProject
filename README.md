# GettingandCleaningData_courseraProject


**Project Description**

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users. The data linked to from the course website represent
data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained: [click]
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

___
**Data**

[Here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) are the data for the project.

___
**Instructions**

Create one R script called *run_analysis.R* that does the following:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive activity names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

___
**Files**

- *CodeBook.md* ... description about variables, data and transformations performed in *run_analysis.R*
- *run_analysis.R* ... R script to transform raw data set in a tidy one

___
**How to use it**

Set your working directory to directory where the data *UCI HAR Dataset* and the script *run_analysis.R* are. Run script using *source("run_analysis.R")*.
