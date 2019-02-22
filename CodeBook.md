# Code Book

## License

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

 This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

 Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## Data

The data is the result of experiments carried out on a group of 30 volunteers. The age range of the volunteers was 19 - 48 years of age. The volunteers performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying). The data was recorded using the embedded accelerometer and gyroscope of a Samsung Galaxy S II smartphone worn by each participant. The 3 - axial linear acceleration and the 3 - axial angular velocity were captured at a constant rate of 50Hz. The data was divided into two groups to generate test and training data. 70% of the volunteers data comprises the training data, and the remaining 30% comprise the test data.

## Cleaning Procedures performed

* The source data was downloaded from url: `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`
* The source data file was unzipped and saved
* The features.txt was imported as the data frame features and the descriptive column labels n code and functions were added
* The activity_labels.txt was imported as the data frame activity_labels and the descriptive column labels code and activity were added
* The X_train.txt and X_test.txt were imported as separate data frames and the descriptive column labels were added from features
* The y_train.txt and y_test.txt were imported as separate data frames and the descriptive column label code was added
* The subject_train.txt and subject_test.txt were imported as separate data frames and the descriptive column label subject was added
* The train_data_x and test_data_x data frames were combined by rows
* The train_data_y and test_data_y data frames were combined by rows
* The train_data_subject and  test_data_subject data frames were combined by rows
* The three row combined data frames were then combined by columns to create one data set
* A subset of the data containing only the subject, code and any column label containing measurements on the mean and standard deviation was created
* The activity code was replaced with descriptive activity labels from the created activity_labels data frame
* Column labels were updated for readability and to provide a description of the data stored
* A separate data set was created, which contains the average of each variable for each activity and each subject. The data set is sorted by test subject and activity

## Data Variables

Variable                           | Description
-----------------------------------|------------
'Subject_ID'      | ID of the test subject
'Activity'      | activity
`Time_Body_Accelerometer.mean...X`    | the mean for the variable Time_Body_Accelerometer.mean...X
`Time_Body_Accelerometer.mean...Y`    | the mean for the variable Time_Body_Accelerometer.mean...Y
`Time_Body_Accelerometer.mean...Z`    | the mean for the variable Time_Body_Accelerometer.mean...Z
`Time_Gravity_Accelerometer.mean...X`    | the mean for the variable Time_Gravity_Accelerometer.mean...X
`Time_Gravity_Accelerometer.mean...Y`    | the mean for the variable Time_Gravity_Accelerometer.mean...Y
`Time_Gravity_Accelerometer.mean...Z`    | the mean for the variable Time_Gravity_Accelerometer.mean...Z
`Time_Body_Accelerometer_Jerk.mean...X`    | the mean for the variable Time_Body_Accelerometer_Jerk.mean...X
`Time_Body_Accelerometer_Jerk.mean...Y`    | the mean for the variable Time_Body_Accelerometer_Jerk.mean...Y
`Time_Body_Accelerometer_Jerk.mean...Z`    | the mean for the variable Time_Body_Accelerometer_Jerk.mean...Z
`Time_Body_Gyroscope.mean...X`    | the mean for the variable Time_Body_Gyroscope.mean...X
`Time_Body_Gyroscope.mean...Y`    | the mean for the variable Time_Body_Gyroscope.mean...Y
`Time_Body_Gyroscope.mean...Z`    | the mean for the variable Time_Body_Gyroscope.mean...Z
`Time_Body_Gyroscope_Jerk.mean...X`    | the mean for the variable Time_Body_Gyroscope_Jerk.mean...X
`Time_Body_Gyroscope_Jerk.mean...Y`    | the mean for the variable Time_Body_Gyroscope_Jerk.mean...Y
`Time_Body_Gyroscope_Jerk.mean...Z`    | the mean for the variable Time_Body_Gyroscope_Jerk.mean...Z
`Time_Body_Accelerometer_Magnitude.mean..`    | the mean for the variable Time_Body_Accelerometer_Magnitude.mean..
`Time_Gravity_Accelerometer_Magnitude.mean..`    | the mean for the variable Time_Gravity_Accelerometer_Magnitude.mean..
`Time_Body_Accelerometer_Jerk_Magnitude.mean..`    | the mean for the variable Time_Body_Accelerometer_Jerk_Magnitude.mean..
`Time_Body_Gyroscope_Magnitude.mean..`    | the mean for the variable Time_Body_Gyroscope_Magnitude.mean..
`Time_Body_Gyroscope_Jerk_Magnitude.mean..`    | the mean for the variable Time_Body_Gyroscope_Jerk_Magnitude.mean..
`Frequency_Body_Accelerometer.mean...X`    | the mean for the variable Frequency_Body_Accelerometer.mean...X
`Frequency_Body_Accelerometer.mean...Y`    | the mean for the variable Frequency_Body_Accelerometer.mean...Y
`Frequency_Body_Accelerometer.mean...Z`    | the mean for the variable Frequency_Body_Accelerometer.mean...Z
`Frequency_Body_Accelerometer.meanFreq...X`    | the mean for the variable Frequency_Body_Accelerometer.meanFreq...X
`Frequency_Body_Accelerometer.meanFreq...Y`    | the mean for the variable Frequency_Body_Accelerometer.meanFreq...Y
`Frequency_Body_Accelerometer.meanFreq...Z`    | the mean for the variable Frequency_Body_Accelerometer.meanFreq...Z
`Frequency_Body_Accelerometer_Jerk.mean...X`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.mean...X
`Frequency_Body_Accelerometer_Jerk.mean...Y`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.mean...Y
`Frequency_Body_Accelerometer_Jerk.mean...Z`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.mean...Z
`Frequency_Body_Accelerometer_Jerk.meanFreq...X`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.meanFreq...X
`Frequency_Body_Accelerometer_Jerk.meanFreq...Y`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.meanFreq...Y
`Frequency_Body_Accelerometer_Jerk.meanFreq...Z`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.meanFreq...Z
`Frequency_Body_Gyroscope.mean...X`    | the mean for the variable Frequency_Body_Gyroscope.mean...X
`Frequency_Body_Gyroscope.mean...Y`    | the mean for the variable Frequency_Body_Gyroscope.mean...Y
`Frequency_Body_Gyroscope.mean...Z`    | the mean for the variable Frequency_Body_Gyroscope.mean...Z
`Frequency_Body_Gyroscope.meanFreq...X`    | the mean for the variable Frequency_Body_Gyroscope.meanFreq...X
`Frequency_Body_Gyroscope.meanFreq...Y`    | the mean for the variable Frequency_Body_Gyroscope.meanFreq...Y
`Frequency_Body_Gyroscope.meanFreq...Z`    | the mean for the variable Frequency_Body_Gyroscope.meanFreq...Z
`Frequency_Body_Accelerometer_Magnitude.mean..`    | the mean for the variable Frequency_Body_Accelerometer_Magnitude.mean..
`Frequency_Body_Accelerometer_Magnitude.meanFreq..`    | the mean for the variable Frequency_Body_Accelerometer_Magnitude.meanFreq..
`Frequency_Body_Accelerometer_Jerk_Magnitude.mean..`    | the mean for the variable Frequency_Body_Accelerometer_Jerk_Magnitude.mean..
`Frequency_Body_Accelerometer_Jerk_Magnitude.meanFreq..`    | the mean for the variable Frequency_Body_Accelerometer_Jerk_Magnitude.meanFreq..
`Frequency_Body_Gyroscope_Magnitude.mean..`    | the mean for the variable Frequency_Body_Gyroscope_Magnitude.mean..
`Frequency_Body_Gyroscope_Magnitude.meanFreq..`    | the mean for the variable Frequency_Body_Gyroscope_Magnitude.meanFreq..
`Frequency_Body_Gyroscope_Jerk_Magnitude.mean..`    | the mean for the variable Frequency_Body_Gyroscope_Jerk_Magnitude.mean..
`Frequency_Body_Gyroscope_Jerk_Magnitude.meanFreq..`    | the mean for the variable Frequency_Body_Gyroscope_Jerk_Magnitude.meanFreq..
`angle.tBody_AccelerometerMean.gravity.`    | the mean for the variable angle.tBody_AccelerometerMean.gravity.
`angle.tBody_Accelerometer_JerkMean..gravityMean.`    | the mean for the variable angle.tBody_Accelerometer_JerkMean..gravityMean.
`angle.tBody_GyroscopeMean.gravityMean.`    | the mean for the variable angle.tBody_GyroscopeMean.gravityMean.
`angle.tBody_Gyroscope_JerkMean.gravityMean.`    | the mean for the variable angle.tBody_Gyroscope_JerkMean.gravityMean.
`angle.X.gravityMean.`    | the mean for the variable angle.X.gravityMean.
`angle.Y.gravityMean.`    | the mean for the variable angle.Y.gravityMean.
`angle.Z.gravityMean.`    | the mean for the variable angle.Z.gravityMean.
`Time_Body_Accelerometer.std...X`    | the mean for the variable Time_Body_Accelerometer.std...X
`Time_Body_Accelerometer.std...Y`    | the mean for the variable Time_Body_Accelerometer.std...Y
`Time_Body_Accelerometer.std...Z`    | the mean for the variable Time_Body_Accelerometer.std...Z
`Time_Gravity_Accelerometer.std...X`    | the mean for the variable Time_Gravity_Accelerometer.std...X
`Time_Gravity_Accelerometer.std...Y`    | the mean for the variable Time_Gravity_Accelerometer.std...Y
`Time_Gravity_Accelerometer.std...Z`    | the mean for the variable Time_Gravity_Accelerometer.std...Z
`Time_Body_Accelerometer_Jerk.std...X`    | the mean for the variable Time_Body_Accelerometer_Jerk.std...X
`Time_Body_Accelerometer_Jerk.std...Y`    | the mean for the variable Time_Body_Accelerometer_Jerk.std...Y
`Time_Body_Accelerometer_Jerk.std...Z`    | the mean for the variable Time_Body_Accelerometer_Jerk.std...Z
`Time_Body_Gyroscope.std...X`    | the mean for the variable Time_Body_Gyroscope.std...X
`Time_Body_Gyroscope.std...Y`    | the mean for the variable Time_Body_Gyroscope.std...Y
`Time_Body_Gyroscope.std...Z`    | the mean for the variable Time_Body_Gyroscope.std...Z
`Time_Body_Gyroscope_Jerk.std...X`    | the mean for the variable Time_Body_Gyroscope_Jerk.std...X
`Time_Body_Gyroscope_Jerk.std...Y`    | the mean for the variable Time_Body_Gyroscope_Jerk.std...Y
`Time_Body_Gyroscope_Jerk.std...Z`    | the mean for the variable Time_Body_Gyroscope_Jerk.std...Z
`Time_Body_Accelerometer_Magnitude.std..`    | the mean for the variable Time_Body_Accelerometer_Magnitude.std..
`Time_Gravity_Accelerometer_Magnitude.std..`    | the mean for the variable Time_Gravity_Accelerometer_Magnitude.std..
`Time_Body_Accelerometer_Jerk_Magnitude.std..`    | the mean for the variable Time_Body_Accelerometer_Jerk_Magnitude.std..
`Time_Body_Gyroscope_Magnitude.std..`    | the mean for the variable Time_Body_Gyroscope_Magnitude.std..
`Time_Body_Gyroscope_Jerk_Magnitude.std..`    | the mean for the variable Time_Body_Gyroscope_Jerk_Magnitude.std..
`Frequency_Body_Accelerometer.std...X`    | the mean for the variable Frequency_Body_Accelerometer.std...X
`Frequency_Body_Accelerometer.std...Y`    | the mean for the variable Frequency_Body_Accelerometer.std...Y
`Frequency_Body_Accelerometer.std...Z`    | the mean for the variable Frequency_Body_Accelerometer.std...Z
`Frequency_Body_Accelerometer_Jerk.std...X`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.std...X
`Frequency_Body_Accelerometer_Jerk.std...Y`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.std...Y
`Frequency_Body_Accelerometer_Jerk.std...Z`    | the mean for the variable Frequency_Body_Accelerometer_Jerk.std...Z
`Frequency_Body_Gyroscope.std...X`    | the mean for the variable Frequency_Body_Gyroscope.std...X
`Frequency_Body_Gyroscope.std...Y`    | the mean for the variable Frequency_Body_Gyroscope.std...Y
`Frequency_Body_Gyroscope.std...Z`    | the mean for the variable Frequency_Body_Gyroscope.std...Z
`Frequency_Body_Accelerometer_Magnitude.std..`    | the mean for the variable Frequency_Body_Accelerometer_Magnitude.std..
`Frequency_Body_Accelerometer_Jerk_Magnitude.std..`    | the mean for the variable Frequency_Body_Accelerometer_Jerk_Magnitude.std..
`Frequency_Body_Gyroscope_Magnitude.std..`    | the mean for the variable Frequency_Body_Gyroscope_Magnitude.std..
`Frequency_Body_Gyroscope_Jerk_Magnitude.std..`    | the mean for the variable Frequency_Body_Gyroscope_Jerk_Magnitude.std..
