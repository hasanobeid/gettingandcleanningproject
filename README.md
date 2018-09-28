# Getting and Cleaning Data - Assignment

##Prerequisite: To run this code you would need to install package "reshape2"

##Steps:
###1: The code downloads the zip file if it doesn't exist and unzip it
###2: Read as table the common labels (features and activities)
###3: Read the train datasets with header = F
###4: Rename the column names to more descriptives names
###5: Merges the train datasets (subject, activities, and features)
###6: Adds a new column to deferentiate between the train and test dataset once they are merged in a later step
###7: Read the test datasets with header = F
###8: Rename the column names of the test data to more descriptives names
###9: Merges the test datasets (subject, activities, and features)
###10: Adds a new column to deferentiate between the train and test dataset once they are merged in a later step
###11: Merge both sets into one dataset called "data"
###12: Only select the std and mean measurements
###13: Create a copy of data into "tidydata" to melt and dcast to get the averages
###14: Write output of dcast into a txt file
