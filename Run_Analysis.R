#download and unzip the dataset

fileurl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="ucidata.zip")
unzip("ucidata.zip")
              
              #step 1 Import the data file
              
              subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
              x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
              y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
              subtjectrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
              x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
              y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
              features <- read.table("./UCI HAR Dataset/features.txt", head=FALSE)
              activity <- read.table("./dataUCI/UCI HAR Dataset/activity_labels.txt")
              
              
              Subject <- rbind(subjecttrain, subjecttest)
              y_data<- rbind(y_train, y_test)
              x_data<- rbind(x_train, x_test)
              
              mean_std_ft <- grep (".*mean.*|.*std.*", features[,2])
              
              x_data <- x_data[,mean_std_ft]
              names(x_data) <- features[mean_std_ft,2]
              
              y_data[, 1] <- activity[y_data[, 1], 2]
              names(data_y) <- "activity"
              names(Subject) <- "subject"
              
              
              Final_data <- cbind(x_data, Subject, y_data)
              
              
              
              
              library(plyr)
              
              Datatidy<-aggregate(. ~subject + activity, Final_data, mean)
              
              write.table(Datatidy, file = "Datatidy.txt",row.name=FALSE)