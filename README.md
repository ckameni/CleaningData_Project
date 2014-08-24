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

   [1] "activiy_name"                                  
   [2] "Subjects"                                      
   [3] "Time.Body.Accelerometer..mean.Z"               
   [4] "Time.Body.Accelerometer..std.X"                
   [5] "Time.Body.Accelerometer..std.Y"                
   [6] "Time.Body.Accelerometer..std.Z"                
   [7] "Time.Body.Accelerometer..mad.X"                
   [8] "Time.Body.Accelerometer..mad.Y"                
   [9] "Time.Gravity.Accelerometer..mean.Z"            
  [10] "Time.Gravity.Accelerometer..std.X"             
  [11] "Time.Gravity.Accelerometer..std.Y"             
  [12] "Time.Gravity.Accelerometer..std.Z"             
  [13] "Time.Gravity.Accelerometer..mad.X"             
  [14] "Time.Gravity.Accelerometer..mad.Y"             
  [15] "Time.Body.Accelerometer.Jerk.mean.Z"           
  [16] "Time.Body.Accelerometer.Jerk.std.X"            
  [17] "Time.Body.Accelerometer.Jerk.std.Y"            
  [18] "Time.Body.Accelerometer.Jerk.std.Z"            
  [19] "Time.Body.Accelerometer.Jerk.mad.X"            
  [20] "Time.Body.Accelerometer.Jerk.mad.Y"            
  [21] "Time.Body.Gyroscope..mean.Z"                   
  [22] "Time.Body.Gyroscope..std.X"                    
  [23] "Time.Body.Gyroscope..std.Y"                    
  [24] "Time.Body.Gyroscope..std.Z"                    
  [25] "Time.Body.Gyroscope..mad.X"                    
  [26] "Time.Body.Gyroscope..mad.Y"                    
  [27] "Time.Body.Gyroscope.Jerk.mean.Z"               
  [28] "Time.Body.Gyroscope.Jerk.std.X"                
  [29] "Time.Body.Gyroscope.Jerk.std.Y"                
  [30] "Time.Body.Gyroscope.Jerk.std.Z"                
  [31] "Time.Body.Gyroscope.Jerk.mad.X"                
  [32] "Time.Body.Gyroscope.Jerk.mad.Y"                
  [33] "Time.Body.Accelerometer.Magnitude.mad"         
  [34] "Time.Body.Accelerometer.Magnitude.max"         
  [35] "Time.Gravity.Accelerometer.Magnitude.mad"      
  [36] "Time.Gravity.Accelerometer.Magnitude.max"      
  [37] "Time.Body.Accelerometer.JerkMagnitude.mad"     
  [38] "Time.Body.Accelerometer.JerkMagnitude.max"     
  [39] "Time.Body.Gyroscope.Magnitude.mad"             
  [40] "Time.Body.Gyroscope.Magnitude.max"             
  [41] "Time.Body.Gyroscope.JerkMagnitude.mad"         
  [42] "Time.Body.Gyroscope.JerkMagnitude.max"         
  [43] "Frequence.Body.Accelerometer..mean.Z"          
  [44] "Frequence.Body.Accelerometer..std.X"           
  [45] "Frequence.Body.Accelerometer..std.Y"           
  [46] "Frequence.Body.Accelerometer..std.Z"           
  [47] "Frequence.Body.Accelerometer..mad.X"           
  [48] "Frequence.Body.Accelerometer..mad.Y"           
  [49] "Frequence.Body.Accelerometer.Jerk.mean.Z"      
  [50] "Frequence.Body.Accelerometer.Jerk.std.X"       
  [51] "Frequence.Body.Accelerometer.Jerk.std.Y"       
  [52] "Frequence.Body.Accelerometer.Jerk.std.Z"       
  [53] "Frequence.Body.Accelerometer.Jerk.mad.X"       
  [54] "Frequence.Body.Accelerometer.Jerk.mad.Y"       
  [55] "Frequence.Body.Gyroscope..mean.Z"              
  [56] "Frequence.Body.Gyroscope..std.X"               
  [57] "Frequence.Body.Gyroscope..std.Y"               
  [58] "Frequence.Body.Gyroscope..std.Z"               
  [59] "Frequence.Body.Gyroscope..mad.X"               
  [60] "Frequence.Body.Gyroscope..mad.Y"               
  [61] "Frequence.Body.Accelerometer.Magnitude.mad"    
  [62] "Frequence.Body.Accelerometer.Magnitude.max"    
  [63] "Frequence.Body.Accelerometer.JerkMagnitude.mad"
  
  [64] "Frequence.Body.Accelerometer.JerkMagnitude.max"
  
  [65] "Frequence.Body.Gyroscope.Magnitude.mad"        
  [66] "Frequence.Body.Gyroscope.Magnitude.max"        
  [67] "Frequence.Body.Gyroscope.JerkMagnitude.mad"    
  [68] "Frequence.Body.Gyroscope.JerkMagnitude.max


##transformations
Following transformations were done to the data.

 The files X\_train.txt, Y\_train.txt and subject\_train.txt were merge  to one data set(trainData) containing all the three training data. 
 The files X\_test.txt,  Y\_test.txt and the subject\_test.txt were merge to one data set( testData) containing all the three test data. 
trainData and testData were merged to one,complete, data frame(mergedData) using rbind.

 Name the columns of the mergedData with the aid of the features.txt file and extract  mean and standard deviation measurements using the grep() function. Create a data frame(filterDf) with the extracted data  using a loop then name the columns of the new data frame.
 
 to get descriptive activities  use the merge() function to merge the data in activity_labels.txt to the data in the filterDf 
 use the gsb() function to change the column names  data definitly tidy.
 
 Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
 
