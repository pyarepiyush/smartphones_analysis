
### Introduction

This repository contains R code for the assignment of the DataScience track's "Getting and Cleaning Data".


### Source Data Set

The data source is [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Execution and files


The file `CodeBook.md` describes the variables, the data, and the work that has been performed to clean up the data.

The file `tidydata.txt` file is created by above script, and contains aggregate values for mean and standard deviation of each measure BY `Activity` level and `Subject`. It is stored in `UCI HAR Dataset/` directory, and uploaded into the assignment page.

### run_analysis.R

* The file `run_analysis.R` is R script that performs this analysis and writes the output data.
* It merges the training and test datasets in \test and \train directories to create a one dataset each for Activity, Subjects and the measures.
* It only extracts the measures pertaining to mean and standard deviation.
* It uses the activity names as factors from activity_labels.txt, and labels the numbers.
* It tidies the names of the datasets
* It aggregates the measures by Activity and Subjects, and orders them.
* Finally it output a text file with the aggregated value. 


