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

<b>testActivity:</b> dataframe of dimension `2947 2` that has the activity labels of testVariables. 

<b>testSubjects:</b> dataframe of dimension `2947 1` that has the subjects age of testVariables. 

<b>trainVariable:</b> dataframe of dimension `7352 66` that has the variables of required features. 

<b>trainActivity:</b> dataframe of dimension `7352 2` that has the activity labels of trainVariables. 

<b>trainSubjects:</b> dataframe of dimension `7352 1` that has the subjects age of trainVariables.
