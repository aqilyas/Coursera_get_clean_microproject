##Description of variables and transformations done

###The first table named _Totaldata_ is the result of merging properly the raw data and extracting only measurments on mean and standard deviation.

* At first, _train_ files were merged with their analogue _test_ files, the results are **three data sets**, the main one is **x_train** that contains all measurments, the second one is **Subject** that contains the numbers of subjects who did the experiment, and the third one is **y_data** that contains the activity number from which the measurment was taken.

* The positions of measurements of the mean and SD were used with the **features** file that contains the name of measurments in the same order, to extract the needed measurements and rename variables.

* The numbers in **y_data** were transformed into activity labels using the original file **activity_labels**

* **Subject** and **y_data** were renamed. and the three data sets are now combined to one tidy dataset, with the following variables (all informations about the measurments can be found in the 'features_info.txt' file):

measurments were taken 10299, aka 10299 row!

1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3  tBodyAcc-mean()-Z
4  tBodyAcc-std()-X
5  tBodyAcc-std()-Y
6  tBodyAcc-std()-Z
7  tGravityAcc-mean()-X
8  tGravityAcc-mean()-Y
9  tGravityAcc-mean()-Z
10  tGravityAcc-std()-X
11  tGravityAcc-std()-Y
12  tGravityAcc-std()-Z
13  tBodyAccJerk-mean()-X
14  tBodyAccJerk-mean()-Y
15  tBodyAccJerk-mean()-Z
16  tBodyAccJerk-std()-X
17  tBodyAccJerk-std()-Y
18  tBodyAccJerk-std()-Z
19  tBodyGyro-mean()-X
20  tBodyGyro-mean()-Y
21  tBodyGyro-mean()-Z
22  tBodyGyro-std()-X
23  tBodyGyro-std()-Y
24  tBodyGyro-std()-Z
25  tBodyGyroJerk-mean()-X
26  tBodyGyroJerk-mean()-Y
27  tBodyGyroJerk-mean()-Z
28  tBodyGyroJerk-std()-X
29  tBodyGyroJerk-std()-Y
30  tBodyGyroJerk-std()-Z
31  tBodyAccMag-mean()
32  tBodyAccMag-std()
33  tGravityAccMag-mean()
34  tGravityAccMag-std()
35  tBodyAccJerkMag-mean()
36  tBodyAccJerkMag-std()
37  tBodyGyroMag-mean()
38  tBodyGyroMag-std()
39  tBodyGyroJerkMag-mean()
40  tBodyGyroJerkMag-std()
41  fBodyAcc-mean()-X
42  fBodyAcc-mean()-Y
43  fBodyAcc-mean()-Z
44  fBodyAcc-std()-X
45  fBodyAcc-std()-Y
46  fBodyAcc-std()-Z
47  fBodyAcc-meanFreq()-X
48  fBodyAcc-meanFreq()-Y
49  fBodyAcc-meanFreq()-Z
50  fBodyAccJerk-mean()-X
51  fBodyAccJerk-mean()-Y
52  fBodyAccJerk-mean()-Z
53  fBodyAccJerk-std()-X
54  fBodyAccJerk-std()-Y
55  fBodyAccJerk-std()-Z
56  fBodyAccJerk-meanFreq()-X
57  fBodyAccJerk-meanFreq()-Y
58  fBodyAccJerk-meanFreq()-Z
59  fBodyGyro-mean()-X
60  fBodyGyro-mean()-Y
61  fBodyGyro-mean()-Z
62  fBodyGyro-std()-X
63  fBodyGyro-std()-Y
64  fBodyGyro-std()-Z
65  fBodyGyro-meanFreq()-X
66  fBodyGyro-meanFreq()-Y
67  fBodyGyro-meanFreq()-Z
68  fBodyAccMag-mean()
69  fBodyAccMag-std()
70  fBodyAccMag-meanFreq()
71  fBodyBodyAccJerkMag-mean()
72  fBodyBodyAccJerkMag-std()
73  fBodyBodyAccJerkMag-meanFreq()
74  fBodyBodyGyroMag-mean()
75  fBodyBodyGyroMag-std()
76  fBodyBodyGyroMag-meanFreq()
77  fBodyBodyGyroJerkMag-mean()
78  fBodyBodyGyroJerkMag-std()
79  fBodyBodyGyroJerkMag-meanFreq()
80  subject: from 1 to 30. the 30 individuals who did the experiments
81  activity : the 6 activities performed by subjects :
       WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### The second tidy data:

it contains the same number of columns, the first two ones are activity and subject, and the other 79 contain the mean from each column in the previous table, I kept the same names.

Use header=TRUE when reading it with read.table!
 



