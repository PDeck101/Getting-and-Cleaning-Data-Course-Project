library(RCurl)
library(dplyr)


workingDirectory <- "G:/Git_Repositories/Getting_and_Cleaning_Data/Week4/Getting-and-Cleaning-Data-Course-Project"
setwd(workingDirectory)
getwd()

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!dir.exists("UCI HAR Dataset")){
  download.file(url,"UIC_HAR_dataset.zip", method = "curl")
  unzip("./UIC_HAR_dataset.zip")
} else{
  print("Directory exists")
}
## Import all relevant data as data frames
## Data frame containing the column labels
features <- read.table("./UCI HAR Dataset/features.txt", col.names = c("n", "functions"))

## data frame containing the code and corresponding activity 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

## data frame containing the training data with appropriately labeled columns
train_data_x <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$functions)

## data frame containing the activity code for the training data
train_data_y <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "code")

## data frame containing the test subject identification number for the training data
train_data_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

## data frame containing the test data with appropriately labeled columns
test_data_x <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$functions)

## data frame containing the activity code for the test data
test_data_y <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "code")

## data frame containing the test subject identification number for the test data
test_data_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")


## 1. Merges the training and the test sets to create one data set.
## row combine the test and training data
row_X <- rbind(train_data_x, test_data_x)
## row combine the test and training activity code data
row_y <- rbind(train_data_y, test_data_y)
## row combine the test and training subject data
row_subject <- rbind(train_data_subject, test_data_subject)
## column combine the above three data frames to create one data set
total_data <- cbind(row_subject, row_y, row_X)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
clean_data <- total_data %>% select(subject, code, contains("mean"), contains("std"))


## 3. Uses descriptive activity names to name the activities in the data set
clean_data$code <- activity_labels[clean_data$code, 2]


## 4. Appropriately labels the data set with descriptive variable names.
names(clean_data)[1] <- "Subject_ID"
names(clean_data)[2] <- "Activity"
names(clean_data) <- gsub("^t", "Time_", names(clean_data))
names(clean_data) <- gsub("^f", "Frequency_", names(clean_data))
names(clean_data) <- gsub("Acc", "_Accelerometer", names(clean_data))
names(clean_data) <- gsub("Gyro", "_Gyroscope", names(clean_data))
names(clean_data) <- gsub("Mag", "_Magnitude", names(clean_data))
names(clean_data) <- gsub("Jerk", "_Jerk", names(clean_data))
names(clean_data) <- gsub("-mean-", "_Mean_", names(clean_data))
names(clean_data) <- gsub("-std-", "_StandardDeviation_", names(clean_data))
names(clean_data) <- gsub("-", "_", names(clean_data))
names(clean_data) <- gsub("BodyBody", "Body", names(clean_data))


## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each 
##    variable for each activity and each subject.

tidy_data <- clean_data %>%
    group_by(Subject_ID, Activity) %>%
    summarise_all(mean)

write.table(tidy_data, file="tidy_data.txt", row.name=FALSE) 

## Code Book
codeBook_path <- "./CodeBook.md"
code_book <- function(...){
  cat(..., "\n", file= codeBook_path , append=TRUE, sep = "")
}

code_book("# Code Book")
code_book("")
code_book("## License\n") 
##code_book("")
code_book("Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012\n\n This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.\n\n Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.")
code_book("")

## Description of the data
code_book("## Data")
code_book("")
code_book("The data is the result of experiments carried out on a group of 30 volunteers. The age range of the volunteers was 19 - 48 years of age. The volunteers performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying). The data was recorded using the embedded accelerometer and gyroscope of a Samsung Galaxy S II smartphone worn by each participant. The 3 - axial linear acceleration and the 3 - axial angular velocity were captured at a constant rate of 50Hz. The data was divided into two groups to generate test and training data. 70% of the volunteers data comprises the training data, and the remaining 30% comprise the test data.")
code_book("")

## The procedures performed to clean the data
code_book("## Cleaning Procedures performed")
code_book("")
code_book("* The source data was downloaded from url: `",url,"`")
code_book("* The source data file was unzipped and saved")
code_book("* The features.txt was imported as the data frame features and the descriptive column labels n code and functions were added")
code_book("* The activity_labels.txt was imported as the data frame activity_labels and the descriptive column labels code and activity were added")
code_book("* The X_train.txt and X_test.txt were imported as separate data frames and the descriptive column labels were added from features")
code_book("* The y_train.txt and y_test.txt were imported as separate data frames and the descriptive column label code was added")
code_book("* The subject_train.txt and subject_test.txt were imported as separate data frames and the descriptive column label subject was added")
code_book("* The train_data_x and test_data_x data frames were combined by rows")
code_book("* The train_data_y and test_data_y data frames were combined by rows")
code_book("* The train_data_subject and  test_data_subject data frames were combined by rows")
code_book("* The three row combined data frames were then combined by columns to create one data set")
code_book("* A subset of the data containing only the subject, code and any column label containing measurements on the mean and standard deviation was created")
code_book("* The activity code was replaced with descriptive activity labels from the created activity_labels data frame")
code_book("* Column labels were updated for readability and to provide a description of the data stored")
code_book("* A separate data set was created, which contains the average of each variable for each activity and each subject. The data set is sorted by test subject and activity")

## Data variables and descriptions
code_book("")
code_book("## Data Variables")
code_book("")
code_book("Variable                           | Description")
code_book("-----------------------------------|------------")
tidy_data_names <- names(tidy_data)
print(tidy_data_names[1])
code_book("'", tidy_data_names[1],"'      | ID of the test subject")
code_book("'", tidy_data_names[2],"'      | activity")

for(x in tidy_data_names[3:ncol(tidy_data)]){
  code_book("`", x, "`    | the mean for the variable ", x)
}