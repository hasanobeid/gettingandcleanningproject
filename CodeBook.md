#Getting and Cleaning Data Assignment

##List of variables used
###filename: name of the file to be written
###fileurl: url of the zip file that should be downloaded
###featureslabels: holds the labels of all features found in features.txt
###activitylabels: holds the labels of activities defined in activity_labels.txt
###trainactivity: holds the activity ids reading from "y_train.txt"
###trainfeatures: holds the activities for all subjects as part of the train dataset reading from "X_train.txt"
###trainsubject: variable for reading data from subject_train and holding the subject ids
###datatrain: merged all training data (activities, features and subjects) into one dataset
###testactivity: holds the activity ids reading from "y_test.txt"
###testfeatures: holds the activities for all subjects as part of the train dataset reading from "X_test.txt"
###testsubject: variable for reading data from subject_test and holding the subject ids
###datatest: merged all test data (activities, features and subjects) into one dataset
###data: variable merged all testing and training data into one dataset
###tidydata: a copy of data used for question 5 to take the average
###melted: a melted copy of tidydata moving all variables to rows and using subjectid and activity and "ids"
###newdata: is the answer for question 5 averaging values per variable, subject and activity
