##Downloading and unzipping of the zip file

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileurl, destfile = "D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/data.zip")

downloaddate <- date()

unzip("data.zip")

###Loading of text files

features<-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/features.txt")

activity<-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/activity_labels.txt")

subjecttest <-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/test/subject_test.txt", header=F)

xtest <-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/test/X_test.txt", header=F)

ytest <-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/test/y_test.txt", header=F)

subjecttrain <-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/train/subject_train.txt", header=F)

xtrain <-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/train/X_train.txt", header=F)

ytrain <-read.table("D:/DATA SCIENCE/3-GETTING AND CLEANING DATA/ASSIGNMENT/GETTING-AND-CLEANING-OF-DATA/UCI HAR Dataset/train/y_train.txt", header=F)

##Merging the training and the test sets to create one data set.

subjectset <- rbind(subjecttrain, subjecttest)

xset <- rbind(xtrain, xtest)

yset <- rbind(ytrain, ytest)

##Extraction of measurements on the mean and standard deviation for each measurement.

m_sd <- grep("-mean\\(\\)|-std\\(\\)", features[,2])

m_sd_variables<-xset[,m_sd]

###Using descriptive activity names to name the activities in the data sets.

yset[,1]<-activity[yset[,1],2]

##labeling the data set with descriptive variable names

labels <- features[m_sd,2]

names(m_sd_variables) <- labels 

names(subjectset) <-"subject_ID"

names(yset) <-"activity"

head(m_sd_variables)

head(subjectset)

head(yset)

##creating one dataset

dataset <- cbind(subjectset, yset, m_sd_variables)

head(dataset[, c(1:5)])

##creating a second, independent tidy data set with the average of each variable for each activity and each subject.

tidydata <-aggregate(.~activity + subject_ID, dataset, mean)

head(tidydata[, c(1:5)])

write.table(tidydata, file = "tidydata.txt",row.name=FALSE)
