#download and unzip the dataset

fileurl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="ucidata.zip")
unzip("ucidata.zip")
              
 # Importing the data files
              
   subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
   x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
   y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
   subtjectrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
   x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
   y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
   features <- read.table("./UCI HAR Dataset/features.txt", head=FALSE)
   activity <- read.table("./dataUCI/UCI HAR Dataset/activity_labels.txt")
              
   #Combining the training and test sets separately:  
            
      Subject <- rbind(subjecttrain, subjecttest)   #This is the subject column
      y_data<- rbind(y_train, y_test)               #This is the activity column
      x_data<- rbind(x_train, x_test)               #This is the table containing measurments
              
      #Extracting measurments on mean and SD, grep will give a numeric vector with the positions of the wanted measurments:     
        mean_std_ft <- grep (".*mean.*|.*std.*", features[,2])
              
              x_data <- x_data[,mean_std_ft]
              names(x_data) <- features[mean_std_ft,2]  #Renaming variables
              
              y_data[, 1] <- activity[y_data[, 1], 2]   #Naming activities
             
              #Renaming the remaining two variables
               names(y_data) <- "activity"
               names(Subject) <- "subject"
              
              #Combining the data to get one tidy data:
              Final_data <- cbind(x_data, Subject, y_data)
              
              
              
              #Creating the new tidy data:  
              library(plyr)
              
              Datatidy<-aggregate(. ~subject + activity, Final_data, mean)
              
              write.table(Datatidy, file = "Datatidy.txt",row.name=FALSE)
              