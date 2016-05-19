# Getting and Cleaning Data Course Project
## Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Assignment
You should create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## My Script
How run_analysis.R works:

1. Sets the local file containing the Samsung data as the working directory using setwd.
2. Reads the training and test data sets and combines them using read.table and rbind. 
3. Reads the training and test subjects and combines them using read.table and rbind. 
4. Reads the training and test data labels and combines them using read.table and rbind. 
5. Reads the features list using read.table. 
6. Subsets only the standard deviation and the mean from the features list using grepl. 
7. Does the same to the combined data set. 
8. Cleans the features names using gsub and tolower. 
9. Reads the activity list using read.table.
10. Cleans the activity names using gsub and tolower. 
11. Renames the data labels with the activity names. 
12. Merges the combined data sets, subjects, and data lables into a tidy data set using cbind. 
13. Exports the tidy data set as a txt file, tidyData_step4, using write.table. 
14. Prepares an empty data set of the appropriate length. 
15. Uses for loops to loop through subjects and subloop through activities.
16. For each activity in a subject, gets the full list of measurements.
17. Then calculates the mean of each of these activities.
18. Places the means in subsequent columns of the subject and activity rows.
19. Exports the second tidy data set as a txt file, tidyData_step5, using write.table. 


