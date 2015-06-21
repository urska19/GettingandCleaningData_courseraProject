
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
- To create *tiny_data.txt*. First, data$subject is set as factor variable. Second, tiny data is created as a data set with average for each activity and subject. Then, the enties in tidy data are orderes and written into data file *tidy_data.txt*.

