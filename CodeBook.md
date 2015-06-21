# Getting &amp; Cleaning Data Course Project Code Book

## Introduction

A detailed description of all raw and derived measurements processed in this data set can be found in the features_info.txt file in the UCI HAR Dataset.

Given that for the final dataset we are now defining and observation as an aggregate function of all measurements collected for a specific Activity, the data are in the "long" form with each aggregate observation value as a column as defined below.  Thus, the 66 end columns show an average value for all observations of the indicated type for unique combinations of Subject and Activity type.


## Variable definitions for Each Observation

### General Variables 

Subject - Integer ID of the test or training subject; range 1-30

Activity - Physical activity class that occured during the set of measurements; values are one of:

> WALKING
> WALKING_UPSTAIRS
> WALKING_DOWNSTAIRS
> SITTING
> STANDING
> LAYING

### Measurement Variables

tBodyAcc.mean_.X_mean - Average of all X dimension Body Acceleration mean signals
tBodyAcc.mean_.Y_mean - Average of all Y dimension Body Acceleration mean signals
tBodyAcc.mean_.Z_mean - Average of all Z dimension Body Acceleration mean signals
tBodyAcc.std_.X_mean - Average of all X dimension Body Acceleration signal standard deviations
tBodyAcc.std_.Y_mean - Average of all Y dimension Body Acceleration signal standard deviations
tBodyAcc.std_.Z_mean - Average of all Z dimension Body Acceleration signal standard deviations
tGravityAcc.mean_.X_mean - Average of all X dimension Gravity Acceleration mean signals
tGravityAcc.mean_.Y_mean - Average of all Y dimension Gravity Acceleration mean signals
tGravityAcc.mean_.Z_mean - Average of all Z dimension Gravity Acceleration mean signals
tGravityAcc.std_.X_mean - Average of all X dimension Gravity Acceleration signal standard deviations
tGravityAcc.std_.Y_mean - Average of all Y dimension Gravity Acceleration signal standard deviations
tGravityAcc.std_.Z_mean - Average of all Z dimension Gravity Acceleration signal standard deviations
tBodyAccJerk.mean_.X_mean - Average of all X dimension Body Acceleration mean jerk signals
tBodyAccJerk.mean_.Y_mean - Average of all Y dimension Body Acceleration mean jerk signals
tBodyAccJerk.mean_.Z_mean - Average of all Z dimension Body Acceleration mean jerk signals
tBodyAccJerk.std_.X_mean - Average of all X dimension Body Acceleration jerk signal standard deviations
tBodyAccJerk.std_.Y_mean - Average of all Y dimension Body Acceleration jerk signal standard deviations
tBodyAccJerk.std_.Z_mean - Average of all Z dimension Body Acceleration jerk signal standard deviations
tBodyGyro.mean_.X_mean - Average of all X dimension Body Gyroscope mean signals
tBodyGyro.mean_.Y_mean - Average of all Y dimension Body Gyroscope mean signals
tBodyGyro.mean_.Z_mean - Average of all Z dimension Body Gyroscope mean signals
tBodyGyro.std_.X_mean - Average of all X dimension Body Gyroscope signal standard deviations
tBodyGyro.std_.Y_mean - Average of all Y dimension Body Gyroscope signal standard deviations
tBodyGyro.std_.Z_mean - Average of all Z dimension Body Gyroscope signal standard deviations
tBodyGyroJerk.mean_.X_mean - Average of all X dimension Body Gyroscope mean jerk signals
tBodyGyroJerk.mean_.Y_mean - Average of all Y dimension Body Gyroscope mean jerk signals
tBodyGyroJerk.mean_.Z_mean - Average of all Z dimension Body Gyroscope mean jerk signals
tBodyGyroJerk.std_.X_mean - Average of all X dimension Body Gyroscope jerk signal standard deviations
tBodyGyroJerk.std_.Y_mean - Average of all Y dimension Body Gyroscope jerk signal standard deviations
tBodyGyroJerk.std_.Z_mean - Average of all Z dimension Body Gyroscope jerk signal standard deviations
tBodyAccMag.mean__mean - Average of the magnitude of Body Acceleration mean signals
tBodyAccMag.std__mean - Average of the magnitude of Body Acceleration signal standard deviations
tGravityAccMag.mean__mean - Average of the magnitude of Gravity Acceleration mean signals
tGravityAccMag.std__mean - Average of the magnitude of Gravity Acceleration signal standard deviations
tBodyAccJerkMag.mean__mean - Average of the magnitude of Body Acceleration mean jerk signals
tBodyAccJerkMag.std__mean - Average of the magnitude of Body Acceleration jerk signal standard deviations
tBodyGyroMag.mean__mean - Average of the magnitude of Body Gyroscope mean signals
tBodyGyroMag.std__mean - Average of the magnitude of Body Gyroscope signal standard deviations
tBodyGyroJerkMag.mean__mean - Average of the magnitude of Body Gyroscope mean jerk signals
tBodyGyroJerkMag.std__mean - Average of the magnitude of Body Gyroscope jerk signal standard deviations
fBodyAcc.mean_.X_mean - Mean of all X dimension Body Acceleration mean frequency domain signals
fBodyAcc.mean_.Y_mean - Mean of all Y dimension Body Acceleration mean frequency domain signals
fBodyAcc.mean_.Z_mean - Mean of all Z dimension Body Acceleration mean frequency domain signals
fBodyAcc.std_.X_mean - Mean of all X dimension Body Acceleration frequency domain signal standard deviations
fBodyAcc.std_.Y_mean - Mean of all Y dimension Body Acceleration frequency domain signal standard deviations
fBodyAcc.std_.Z_mean - Mean of all Z dimension Body Acceleration frequency domain signal standard deviations
fBodyAccJerk.mean_.X_mean - Mean of all X dimension Body Acceleration mean frequency domain jerk signals
fBodyAccJerk.mean_.Y_mean - Mean of all Y dimension Body Acceleration mean frequency domain jerk signals
fBodyAccJerk.mean_.Z_mean - Mean of all Z dimension Body Acceleration mean frequency domain jerk signals
fBodyAccJerk.std_.X_mean - Mean of all X dimension Body Acceleration jerk frequency domain signal standard deviations
fBodyAccJerk.std_.Y_mean - Mean of all Y dimension Body Acceleration jerk frequency domain signal standard deviations
fBodyAccJerk.std_.Z_mean - Mean of all Z dimension Body Acceleration jerk frequency domain signal standard deviations
fBodyGyro.mean_.X_mean - Average of all X dimension Body Gyroscope mean frequency domain signals
fBodyGyro.mean_.Y_mean - Average of all Y dimension Body Gyroscope mean frequency domain signals
fBodyGyro.mean_.Z_mean - Average of all Z dimension Body Gyroscope mean frequency domain signals
fBodyGyro.std_.X_mean - Average of all X dimension Body Gyroscope mean frequency domain signal standard deviations
fBodyGyro.std_.Y_mean - Average of all Y dimension Body Gyroscope mean frequency domain signal standard deviations
fBodyGyro.std_.Z_mean - Average of all Z dimension Body Gyroscope mean frequency domain signal standard deviations
fBodyAccMag.mean__mean - Average of the magnitude of Body Acceleration mean frequency domain signals
fBodyAccMag.std__mean - Average of the magnitude of Body Acceleration frequency domain signal standard deviations
fBodyAccJerkMag.mean__mean - Average of the magnitude of Body Acceleration mean frequency domain jerk signals
fBodyAccJerkMag.std__mean - Average of the magnitude of Body Acceleration frequency domain jerk signal standard deviations
fBodyGyroMag.mean__mean - Average of the magnitude of Body Gyroscope mean frequency domain signals
fBodyGyroMag.std__mean - Average of the magnitude of Body Gyroscope frequency domain signal standard deviations
fBodyGyroJerkMag.mean__mean - Average of the magnitude of Body Gyroscope mean frequency domain jerk signals
fBodyGyroJerkMag.std__mean - Average of the magnitude of Body Gyroscope frequency domain jerk signal standard deviations