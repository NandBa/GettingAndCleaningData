# Code Book

### Variable List

|Variable|Purpose                                               |
|--------|------------------------------------------------------|
|Subject|ID the subject who performed the activity for each window sample. Its range is from 1 to 30|
|Activities|The activity performed|
|TimeBodyAcc-XYZ|Time domain body acceleration signal on accelerometer in X, Y or Z axis direction|
|TimeGravityAcc-XYZ|Time domain gravity acceleration signal on accelerometer in X, Y or Z axis direction|
|TimeBodyAccJerk-XYZ|Time domain body acceleration jerk signal on accelerometer in X, Y or Z axis direction|
|TimeBodyGyro-XYZ|Time domain body acceleration signal on gyroscope in X, Y or Z axis direction|
|TimeBodyGyroJerk-XYZ|Time domain body acceleration jerk signal on gyroscope in X, Y or Z axis direction|
|TimeBodyAccMag|Time domain body acceleration signal on accelerometer in Euclidean norm|
|TimeGravityAccMag|Time domain gravity acceleration signal on accelerometer in Euclidean norm|
|TimeBodyAccJerkMag|Time domain body acceleration jerk signal on accelerometer in Euclidean norm|
|TimeBodyGyroMag|Time domain body acceleration signal on gyroscope in Euclidean norm|
|TimeBodyGyroJerkMag|Time domain body acceleration jerk signal on gyroscope in Euclidean norm|
|FreqBodyAcc-XYZ|Frequency domain body acceleration signal on accelerometer in X, Y or Z axis direction|
|FreqBodyAccJerk-XYZ|Frequency domain body acceleration jerk signal on accelerometer in X, Y or Z axis direction|
|FreqBodyGyro-XYZ|Frequency domain body acceleration signal on gyroscope in X, Y or Z axis direction|
|FreqBodyAccMag|Frequency domain body acceleration signal on accelerometer in Euclidean norm|
|FreqBodyAccJerkMag|Frequency domain body acceleration jerk signal on accelerometer in Euclidean norm|
|FreqBodyGyroMag|Frequency domain body acceleration signal on gyroscope in Euclidean norm|
|FreqBodyGyroJerkMag|Frequency domain body acceleration jerk signal on gyroscope in Euclidean norm|

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcc-XYZ and TimeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

The acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
 
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag,TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Fast Fourier Transform (FFT) was applied to some of these signals producing FreqBodyAcc-XYZ, FreqBodyAccJerk-XYZ, FreqBodyGyro-XYZ, FreqBodyAccJerkMag, FreqBodyGyroMag, fBodyGyroJerkMag.
