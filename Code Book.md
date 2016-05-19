# Background 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# About the Study (from the Authors)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Features:
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Citation:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

# My Variables
- testData: table contents of test/X_test.txt
- trainData: table contents of train/X_train.txt
- X: measurement data, combined data set of the two above variables
- testSub: table contents of test/subject_test.txt
- trainSub: table contents of test/subject_train.txt
- S: subjects, combined data set of the two above variables
- testLabel: table contents of test/y_test.txt
- trainLabel: table contents of train/y_train.txt
- Y: data Labels, combined data set of the two above variables.
- featuresList: table contents of features.txt
- features: names of data columns derived from the features list
- keepColumns: logical vector of features to use in tidy data set
- activities: table contents of activity_labels.txt, cleaned
- tidyData: subsetted, cleaned data ready for output according to project description.
- uS: unique subjects from S
- nS: number of unique subjects
- nA: number of activities
- nC: number of columns in tidyData
- td: second tiny data set with average of each variable for each activity and subject

# Output
## tidyData_step4
tidyData_step4.txt is a 10299x68 data frame:
- The first column contains subject IDs.
- The second column contains activity names.
- The last 66 columns are measurements.
- Subject IDs are integers between 1 and 30.

##tidyData_step5
tidyData_step5.txt is a 180x68 data frame.
- The first column contains subject IDs.
- The second column contains activity names.
- The averages for each of the 66 attributes are in columns 3-68.



