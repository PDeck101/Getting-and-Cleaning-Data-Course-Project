## Getting and Cleaning Data

The purpose of this project is to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

This repository contains the following files:
* README.md which is an overview of the data
* CodeBook.md descriptions of the variables, the data, and the procedures performed to clean the data
* run_analysis.R the script that merges and cleans the data, update the workingDirectory variable to the preferred working directory on your system
* tidy_data.txt a cleaned data set of the average of each variable for each activity and subject 

# Data collection
The data was collected from the accelerometers found in a Samsung Galaxy S smartphone, a full description is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and the data for the project was can be found at this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

# Creating the data set
The R script run_analysis.R can be used to recreate the tidy_data.txt data set. The procedures performed can be found in the [CodeBook.md](https://github.com/Takoshake/Getting-and-Cleaning-Data-Course-Project/blob/master/CodeBook.md) file.

The script performs the following steps:
* Combines the training and test data sets to create one data set
* Extracts measurements containing only the mean and standard deviation for each measurement
* Descriptive activity names are added to name the activities in the data set
* Labels are updated to provide descriptive variable names
* The tidy_data.txt data set is created, which is the average of each variable for each activity and each subject

The tidy_data.txt was created using the run_analysis.R script using R version 3.5.1 (2018-07-02)
Platform: x86_64-w64-mingw32/x64 (64-bit)

# Dependencies
The latest version of R needs to be installed on your system\n
The script requires the dplyr and RCurl packages