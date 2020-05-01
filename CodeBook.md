---
title: "CODE BOOK"
author: "VINCENT JUNIOR"
date: "01/05/2020"
output: html_document
---
#**GETTING AND CLEANING OF DATA**

A new project in R wa created with GIT vision control

##Downloading and unzipping of the messy data

1. The data set was downloaded from this [url](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

2. The data was then unzipped in the current working directory

##Loading of files into R

1. Needed text files were loaded into R

##Merging of files

1. Related text files were merged to form three data sets names

-subjectset: using, subject_train.txt and subject_test.txt
-xset: using, X_test.txt and X_train.txt
-yset: using, y_test.txt and y_train.txt

##Extraction of measurements

1. The mean and standard deviation for each measurement were extracted from the features.txt file

2. A new data set was created , m_sd_variables using xset. 

##Activities were then given activity descriptive names

1. In this section, the file activity_labels.txt was used

##Labeling the data set with descriptive variable names

The following data sets where names as follows

1. Names of the subjectset were named as **subject_ID**

2. Names of the yset where named as  **activity**

3. names of the m_sd_variables were named with names having mean or standard deviation.

##creating one dataset that contains all the data

1. A data set called **dataset** was created using the following datasets

-subjectset
-yset
-m_sd_variables)

##Creation of a Tidy data set

1. A tidy data set was created using the avaerage of each variable for each activity and each subject. This tidy data set was named as **tidydata**

##Description of Variables in the data set

The following are the names of the variables in the data set. All of them are numeric except for two, that is, **activity** which is a factor(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING,LAYING) and **subject_Id** which is an integer.  

"activity"                    "subject_ID"                 
 [3] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [5] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
 [7] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
 [9] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"

