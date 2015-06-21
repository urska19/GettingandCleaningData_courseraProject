
**Describtion of data and variables**

Original (raw) data is from [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html)
and contains Human Activity Recognition database built from the recordings of 30 subjects performing 
activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) of daily living while carrying a waist-mounted smartphone with embedded inertial sensors (accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz). 
The obtained data set has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The set of variables that were estimated from these signals are:
 - mean(): Mean value
 - std(): Standard deviation
 - med(): Median absolute deviation
 - max(): Largest value in array
 - min(): Smallest value in array
 - sma(): Signal magnitude area
 - energy(): Energy measure. Sum of the squares divided by the number of values.
 - iqr(): Interquartile range
 - entropy(): Signal entropy
 - arCoeff(): Autoregression coefficients with Burg order equal to 4
 - correlation(): Correlation coefficient between two signals
 - maxInds(): Index of the frequency component with largest magnitude
 - meanFreq(): Weighted average of the frequency components to obtain a mean frequency
 - skewness(): Skewness of the frequency domain signal
 -  - kurtosis(): Kurtosis of the frequency domain signal
 - bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
 - angle(): Angle between some vectors.

All features were normalized and bounded within [-1,1].

__
**Data transformation**


Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


The raw data sets are processed with run_analisys.R script to create a tidy data set.
- Test and training data are merged to obtain a single data set. Variables are labelled according to fil features.txt from the data.
- From the merged data set only the measurements on the mean and standard deviation for each measurement are extracted.
- Activity names are replaced by the names of the activities in the set (according to activity_labels.txt from the data).
- Merged data set is labeled with descriptive variable names ("Acc"->"Accelerator", "Mag"->"Magnitude", "Gyro",->"Gyroscope","^t"->"time","^f"->"frequency", "BodyBody"->"Body", "tBody"->"timeBody").



# Tidy Data
Contains aggregated mean values of all mean and standard deviation values from original data set grouped by activity  and subject, resulting in a total of 180 records.

## Attribute Information:
For each record in the tidy data it is provided: 
- Its activity label (one out of 6 different activities):
  - LAYING
  - SITTING
  - STANDING
  - WALKING
  - WALKING_DOWNSTAIR
  - WALKING_UPSTAIRS
- An identifier of the subject who carried out the experiment (30 different subjects, IDs ranging from {1,2,3,...,30})
- 79 features with the
  - Mean of Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
  - Mean of Triaxial Angular velocity from the gyroscope. 
  - numerical value ranging in [-1,1]

## Variable names
- activity
- subject
- tbodyacc.mean.x
- tbodyacc.mean.y
- tbodyacc.mean.z
- tbodyacc.std.x
- tbodyacc.std.y
- tbodyacc.std.z
- tgravityacc.mean.x
- tgravityacc.mean.y
- tgravityacc.mean.z
- tgravityacc.std.x
- tgravityacc.std.y
- tgravityacc.std.z
- tbodyaccjerk.mean.x
- tbodyaccjerk.mean.y
- tbodyaccjerk.mean.z
- tbodyaccjerk.std.x
- tbodyaccjerk.std.y
- tbodyaccjerk.std.z
- tbodygyro.mean.x
- tbodygyro.mean.y
- tbodygyro.mean.z
- tbodygyro.std.x
- tbodygyro.std.y
- tbodygyro.std.z
- tbodygyrojerk.mean.x
- tbodygyrojerk.mean.y
- tbodygyrojerk.mean.z
- tbodygyrojerk.std.x
- tbodygyrojerk.std.y
- tbodygyrojerk.std.z
- tbodyaccmag.mean
- tbodyaccmag.std
- tgravityaccmag.mean
- tgravityaccmag.std
- tbodyaccjerkmag.mean
- tbodyaccjerkmag.std
- tbodygyromag.mean
- tbodygyromag.std
- tbodygyrojerkmag.mean
- tbodygyrojerkmag.std
- fbodyacc.mean.x
- fbodyacc.mean.y
- fbodyacc.mean.z
- fbodyacc.std.x
- fbodyacc.std.y
- fbodyacc.std.z
- fbodyacc.mean.freq.x
- fbodyacc.mean.freq.y
- fbodyacc.mean.freq.z
- fbodyaccjerk.mean.x
- fbodyaccjerk.mean.y
- fbodyaccjerk.mean.z
- fbodyaccjerk.std.x
- fbodyaccjerk.std.y
- fbodyaccjerk.std.z
- fbodyaccjerk.mean.freq.x
- fbodyaccjerk.mean.freq.y
- fbodyaccjerk.mean.freq.z
- fbodygyro.mean.x
- fbodygyro.mean.y
- fbodygyro.mean.z
- fbodygyro.std.x
- fbodygyro.std.y
- fbodygyro.std.z
- fbodygyro.mean.freq.x
- fbodygyro.mean.freq.y
- fbodygyro.mean.freq.z
- fbodyaccmag.mean
- fbodyaccmag.std
- fbodyaccmag.meanfreq
- fbodybodyaccjerkmag.mean
- fbodybodyaccjerkmag.std
- fbodybodyaccjerkmag.mean.freq
- fbodybodygyromag.mean
- fbodybodygyromag.std
- fbodybodygyromag.mean.freq
- fbodybodygyrojerkmag.mean
- fbodybodygyrojerkmag.std
- fbodybodygyrojerkmag.mean.freq


© Heinrich Krupp 2014 All Rights reserved.
