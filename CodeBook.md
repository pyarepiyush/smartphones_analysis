### CodeBook for Human Activity Recognition Using Smartphones Data Set 

This Codebook describes the dataset and the variables for the aggregated measures.

#### Output Dataset
 
contains aggregate values for mean and standard deviation of each measure BY `Activity level` and `Subject`. It is stored in `UCI HAR Dataset/` directory, and uploaded into the assignment page.

#### Features

* Subject: Unique identifier fr each subject. There are 30 unique values

* Activity: Factor with 6 levels: WALKING,  WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING 

 

* Measures

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
````
timeBodyAcc-XYZ

timeGravityAcc-XYZ

timeBodyAccJerk-XYZ

timeBodyGyro-XYZ

timeBodyGyroJerk-XYZ

timeBodyAccMag

timeGravityAccMag

timeBodyAccJerkMag

timeBodyGyroMag

timeBodyGyroJerkMag

freqBodyAcc-XYZ

freqBodyAccJerk-XYZ

freqBodyGyro-XYZ

freqBodyAccMag

freqBodyAccJerkMag

freqBodyGyroMag

freqBodyGyroJerkMag
````

* The set of variables that were estimated from these signals are: 

````
mean(): Mean value

std(): Standard deviation
````

* Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
````
gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

````

