## Codebook

### variables

<b>url:</b> the url of the dataset.

<b>baseDirectory:</b> folder name where the data are.

<b>activityLabels:</b> the activities dataframe of dim `6, 2`. there are 6 activities
  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING

<b>features:</b> dataframe that contains the name of the features. has `561 2` dimension that means 561 features in total.

<b>requiredFeatures:</b> dataframe that contains the required features containing onlu mean() and std(). has a dim of `66 2`. that means total 66 features

<b>testVariable:</b> dataframe of dimension `2947 66` that has the variables of required features. 

<b>testActivity:</b> dataframe of dimension `2947 2` that has the activity labels of testVariables. the value is from `1-6`.

<b>testSubjects:</b> dataframe of dimension `2947 1` that has the subjects age of testVariables. the value is from `1-30`.

<b>trainVariable:</b> dataframe of dimension `7352 66` that has the variables of required features. 

<b>trainActivity:</b> dataframe of dimension `7352 2` that has the activity labels of trainVariables. the value is from `1-6`.

<b>trainSubjects:</b> dataframe of dimension `7352 1` that has the subjects age of trainVariables. the value is from `1-30`.

<b>testDataFinal:</b> dataframe of dimension `2947 69` that has the testSubjects, testVariables and testActivities merged.

<b>trainDataFinal:</b> dataframe of dimension `7352 69` that has the trainSubjects, trainVariables and trainActivities merged.

<b>dataSet:</b> final dataset test and train merged. total 68 types of variable

 [1] "activityName"                                  
 [2] "subject"                                       
 [3] "TimeBodyAccelerometer-mean()-X"                
 [4] "TimeBodyAccelerometer-mean()-Y"                
 [5] "TimeBodyAccelerometer-mean()-Z"                
 [6] "TimeBodyAccelerometer-std()-X"                 
 [7] "TimeBodyAccelerometer-std()-Y"                 
 [8] "TimeBodyAccelerometer-std()-Z"                 
 [9] "TimeGravityAccelerometer-mean()-X"             
[10] "TimeGravityAccelerometer-mean()-Y"             
[11] "TimeGravityAccelerometer-mean()-Z"             
[12] "TimeGravityAccelerometer-std()-X"              
[13] "TimeGravityAccelerometer-std()-Y"              
[14] "TimeGravityAccelerometer-std()-Z"              
[15] "TimeBodyAccelerometerJerk-mean()-X"            
[16] "TimeBodyAccelerometerJerk-mean()-Y"            
[17] "TimeBodyAccelerometerJerk-mean()-Z"            
[18] "TimeBodyAccelerometerJerk-std()-X"             
[19] "TimeBodyAccelerometerJerk-std()-Y"             
[20] "TimeBodyAccelerometerJerk-std()-Z"             
[21] "TimeBodyGyroscope-mean()-X"                    
[22] "TimeBodyGyroscope-mean()-Y"                    
[23] "TimeBodyGyroscope-mean()-Z"                    
[24] "TimeBodyGyroscope-std()-X"                     
[25] "TimeBodyGyroscope-std()-Y"                     
[26] "TimeBodyGyroscope-std()-Z"                     
[27] "TimeBodyGyroscopeJerk-mean()-X"                
[28] "TimeBodyGyroscopeJerk-mean()-Y"                
[29] "TimeBodyGyroscopeJerk-mean()-Z"                
[30] "TimeBodyGyroscopeJerk-std()-X"                 
[31] "TimeBodyGyroscopeJerk-std()-Y"                 
[32] "TimeBodyGyroscopeJerk-std()-Z"                 
[33] "TimeBodyAccelerometerMagnitude-mean()"         
[34] "TimeBodyAccelerometerMagnitude-std()"          
[35] "TimeGravityAccelerometerMagnitude-mean()"      
[36] "TimeGravityAccelerometerMagnitude-std()"       
[37] "TimeBodyAccelerometerJerkMagnitude-mean()"     
[38] "TimeBodyAccelerometerJerkMagnitude-std()"      
[39] "TimeBodyGyroscopeMagnitude-mean()"             
[40] "TimeBodyGyroscopeMagnitude-std()"              
[41] "TimeBodyGyroscopeJerkMagnitude-mean()"         
[42] "TimeBodyGyroscopeJerkMagnitude-std()"          
[43] "FrequencyBodyAccelerometer-mean()-X"           
[44] "FrequencyBodyAccelerometer-mean()-Y"           
[45] "FrequencyBodyAccelerometer-mean()-Z"           
[46] "FrequencyBodyAccelerometer-std()-X"            
[47] "FrequencyBodyAccelerometer-std()-Y"            
[48] "FrequencyBodyAccelerometer-std()-Z"            
[49] "FrequencyBodyAccelerometerJerk-mean()-X"       
[50] "FrequencyBodyAccelerometerJerk-mean()-Y"       
[51] "FrequencyBodyAccelerometerJerk-mean()-Z"       
[52] "FrequencyBodyAccelerometerJerk-std()-X"        
[53] "FrequencyBodyAccelerometerJerk-std()-Y"        
[54] "FrequencyBodyAccelerometerJerk-std()-Z"        
[55] "FrequencyBodyGyroscope-mean()-X"               
[56] "FrequencyBodyGyroscope-mean()-Y"               
[57] "FrequencyBodyGyroscope-mean()-Z"               
[58] "FrequencyBodyGyroscope-std()-X"                
[59] "FrequencyBodyGyroscope-std()-Y"                
[60] "FrequencyBodyGyroscope-std()-Z"                
[61] "FrequencyBodyAccelerometerMagnitude-mean()"    
[62] "FrequencyBodyAccelerometerMagnitude-std()"     
[63] "FrequencyBodyAccelerometerJerkMagnitude-mean()"
[64] "FrequencyBodyAccelerometerJerkMagnitude-std()" 
[65] "FrequencyBodyGyroscopeMagnitude-mean()"        
[66] "FrequencyBodyGyroscopeMagnitude-std()"         
[67] "FrequencyBodyGyroscopeJerkMagnitude-mean()"    
[68] "FrequencyBodyGyroscopeJerkMagnitude-std()"  

<b>dataSet2:</b> average of the metrices grouped by subjects and activities.
