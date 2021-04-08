# GCD #
Getting and Cleaning Data Course Project

## The purpose the project ##
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.


The dataset includes the following files:
=========================================
- 'README.md': this file
- 'CodeBook.md': code Book, list of all attributes
- 'run_analysis.R': the R script

What does the "run_analysis.R"?
=========================================
1.  download the source data set from the internet
2. unpack the downloaded file
3. load the following files
3.1. X_test.txt, X_train.txt ... observations
3.2. y_test.txt, y_train.txt ... activity types of observation
3.3. activity_labels.txt ... levels of activity
3.4. features.txt .. column names of X_test.txt and X.train.txt
4. generate a filter for required columns for X_(test|train).txt, which only includes mean() and std()
5. extract only filtered columns from X_test.txt and X_train.txt
6. generate a new tidy data set "total_data" consists of required columns
7. generate a new tidy data set "means_per_subject_and_activities" with aggregated data with the average of each variable for each activity and each subject from "total_data"
8. write the "means_per_subject_and_activities" into a txt file with file name "mytidydataset.txt"
9. clean up

