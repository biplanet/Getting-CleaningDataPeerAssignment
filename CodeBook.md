This code book includes information about:

1.	Source data set
2.	Cleaning process and aggregation applied in source data
3.	Output aggregated data set variables


Source data was collected from the UCI Machine Learning Repository to complete an assignment for Getting & Cleaning data course. This assignment includes working with the data set and transforming it to get a clean output. 

Transformations applied on source data are to get clean aggregated output are:

1.	Download the data set
2.	Unzip the data set
3.	Load test and training data sets into data frames
4.	Load source variable names for test and training data sets
5.	Load activity labels
6.	Merge training & test data sets (using rbind)
7.	Consider only mean and standard deviation readings from merged data set (using grep)
8.	Replace Activity ID with Activity Label
9.	Join all data frames to get only one data frame with subjects, measurements and activities
10.	Save new cleaned output to "cleanedData.txt"
11.	Apply aggregated function mean & std on new cleaned data set
12.	Save new aggregated output to "aggregatedData.txt"

Cleaned & Aggregated output variables:

1.	subjectId: 1 to 30 each representing a participant in the study
2.	activity: the activity that the subject was doing at the time of the measurement
3.	tBodyAcc-mean-X
4.	tBodyAcc-mean-Y
1.	tBodyAcc-mean-Z
2.	tBodyAcc-std-X
3.	tBodyAcc-std-Y
4.	tBodyAcc-std-Z
5.	tGravityAcc-mean-X
6.	tGravityAcc-mean-Y
7.	tGravityAcc-mean-Z
8.	tGravityAcc-std-X
9.	tGravityAcc-std-Y
10.	tGravityAcc-std-Z
11.	tBodyAccJerk-mean-X
12.	tBodyAccJerk-mean-Y
13.	tBodyAccJerk-mean-Z
14.	tBodyAccJerk-std-X
15.	tBodyAccJerk-std-Y
16.	tBodyAccJerk-std-Z
17.	tBodyGyro-mean-X
18.	tBodyGyro-mean-Y
19.	tBodyGyro-mean-Z
20.	tBodyGyro-std-X
21.	tBodyGyro-std-Y
22.	tBodyGyro-std-Z
23.	tBodyGyroJerk-mean-X
24.	tBodyGyroJerk-mean-Y
25.	tBodyGyroJerk-mean-Z
26.	tBodyGyroJerk-std-X
27.	tBodyGyroJerk-std-Y
28.	tBodyGyroJerk-std-Z
29.	tBodyAccMag-mean
30.	tBodyAccMag-std
31.	tGravityAccMag-mean
32.	tGravityAccMag-std
33.	tBodyAccJerkMag-mean
34.	tBodyAccJerkMag-std
35.	tBodyGyroMag-mean
36.	tBodyGyroMag-std
37.	tBodyGyroJerkMag-mean
38.	tBodyGyroJerkMag-std
39.	fBodyAcc-mean-X
40.	fBodyAcc-mean-Y
41.	fBodyAcc-mean-Z
42.	fBodyAcc-std-X
43.	fBodyAcc-std-Y
44.	fBodyAcc-std-Z
45.	fBodyAccJerk-mean-X
46.	fBodyAccJerk-mean-Y
47.	fBodyAccJerk-mean-Z
48.	fBodyAccJerk-std-X
49.	fBodyAccJerk-std-Y
50.	fBodyAccJerk-std-Z
51.	fBodyGyro-mean-X
52.	fBodyGyro-mean-Y
53.	fBodyGyro-mean-Z
54.	fBodyGyro-std-X
55.	fBodyGyro-std-Y
56.	fBodyGyro-std-Z
57.	fBodyAccMag-mean
58.	fBodyAccMag-std
59.	fBodyBodyAccJerkMag-mean
60.	fBodyBodyAccJerkMag-std
61.	fBodyBodyGyroMag-mean
62.	fBodyBodyGyroMag-std
63.	fBodyBodyGyroJerkMag-mean
64.	fBodyBodyGyroJerkMag-std
