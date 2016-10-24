### Informations in detail about the experiment and data generated can be found [here:] 
(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

##The Objective of the R script is to get a tidy dataset from raw data, through the following outputs:

1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* We read the data into R, we don’t need the inertial folder data for this exercise ! 
by looking at the dimensions, or both train and test files, we find first the sum of the number of rows of train files and test files is 10299, which is very logical since the entire data set was divided into 30% for test and 70% for training. 

* Instead of merging all data in the beginning then extracting measurments and renaming etc, it can come handy to merge training and test sets separately (x_train with x_test, y_train with y_train, same for subject)

* The x_data is the main part of the data set (that contains only measurments), to extract the measurements on the mean and standard deviation, we will use the function '<grep()>' with the regular expression : ( .*mean.*|.*std*. )

this gives all variables that include ‘mean’ or ‘std’ in it, we could have used the regex : 
 "-(mean|std)\\(\\)"
but this one will remove measurements where there are letters after ‘mean’/’std’, such as : 
fBodyAcc-meanFreq()-X 
 The assignment did not specify, so I'm choosing the first option.

* Renaming: There are two kinds of names to change: 
     1. variables (columns names)
     2. activity labels (expressions instead of numbers from 1 to 6)
 For the variables, we first used the output of the function grep to change requested measurments names, then we easily change the subject and activity variables' names.
 For the activity labels I used : '< data_y[,1] = activity[data_y[,1],2] >' to replace numbers with descriptive activity names.

 Now we are done with output 2,3 and 4. then we simply merge columns using '<cbind()>' and get one big and tidy dataset. now done with output 1.

* to create the new tidy dataset (ouput 5), there are many ways to do it with different correct results. in my case, I used the function '<aggregate()>' to create this new tidy dataset. The result is a table with 180 rows: 6 activities x 30 subjects. means of measurments for each activity and each subject.




 
