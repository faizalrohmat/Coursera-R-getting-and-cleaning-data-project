# Coursera-R-getting-and-cleaning-data-project
## Source
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition[at]martlab.ws

## Overview
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Explanation of each file

* ./UCI HAR Dataset/features.txt: Names of the 561 features.
* ./UCI HAR Dataset/activity_labels.txt: Names and IDs for each of the 6 activities.

* ./UCI HAR Dataset/train/X_train.txt: 7352 observations of the 561 features, for 21 of the 30 volunteers.
* ./UCI HAR Dataset/train/subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.
* ./UCI HAR Dataset/train/y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.

* ./UCI HAR Dataset/test/X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
* ./UCI HAR Dataset/test/subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in `X_test.txt`.
* ./UCI HAR Dataset/test/y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in `X_test.txt`.

## Data files that were not used

This analysis was performed using only the files above, and did not use the raw signal data. Therefore, the data files in the "Inertial Signals" folders were ignored.
