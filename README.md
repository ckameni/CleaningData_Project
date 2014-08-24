CleaningData_Project
====================
##  Description of the data,

###Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


###Subjects
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The subjects are numbered from 1 to 30

###Activities
Each of the subject were measured for the following six activities:
  WALKING,
  WALKING_UPSTAIRS, 
  WALKING_DOWNSTAIRS,
  SITTING, 
  STANDING,
  LAYING
 
##Variable description 


##transformations
Following transformations were done to the data.

 The files X\_train.txt, Y\_train.txt and subject\_train.txt were merge  to one data set(trainData) containing all the three training data. 
 The files X\_test.txt,  Y\_test.txt and the subject\_test.txt were merge to one data set( testData) containing all the three test data. 
trainData and testData were merged to one,complete, data frame(mergedData) using rbind.

 Name the columns of the mergedData with the aid of the features.txt file and extract  mean and standard deviation measurements using the grep() function. Create a data frame(filterDf) with the extracted data  using a loop then name the columns of the new data frame.
 
 to get descriptive activities 


 
column wise stack y_xxxx.txt, x_xxxx.txt and subject_xxx.txt using cbind for both training and test dataset ( xxxx = test / train). This gives consolidated data for both training and test dataset.
row wise stack test and training data using rbind. This gives complete dataset.
Extract out mean and standard deviation features ( with mean() and std() ).
merge data in activity_labels.txt to the previously created dataset go get descriptive activities
Do a group-wise average of the features by activity by subject using ddply.
Complete details of transformations along with the code is given in run_analysis.R

Variable description

Columns were named to as descriptive as possible. In general, the variable names denoting the features follow the following convention and as an example AverageTimeBodyAccelerationJerk.Mean.X expands to :

Summary	Domain	Signal Types	Sensor	velocity type	Statistics	Axis
Average	Time/Frequency	Body/Gravity	Acceleration/Gyroscopic	Jerk / Magnitude	Mean/Standard Deviation	X/Y/Z
Average	Time	Body	Acceleration	Jerk	Mean	X
There is the complete list of all the variables. Measurements are normalized by dividing them by their range, they are all between -1 and 1 and do not have units ( units got cancelled by dividing)
