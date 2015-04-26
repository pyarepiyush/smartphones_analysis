
getwd()

# Download the datasets

if(!file.exists("./indata_coursera")){dir.create("./indata_coursera")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./indata_coursera/Dataset.zip")

#Unzip
unzip(zipfile="./indata_coursera/Dataset.zip",exdir="./indata_coursera")

# Root path
rootpath<-file.path("./indata_coursera/UCI HAR Dataset")


####################### README.txt ###########################
# 
# - 'features_info.txt': Shows information about the variables used on the feature vector.
# 
# - 'features.txt': List of all features.
# 
# - 'activity_labels.txt': Links the class labels with their activity name.
# 
# - 'train/X_train.txt': Training set.
# 
# - 'train/y_train.txt': Training labels.
# 
# - 'test/X_test.txt': Test set.
# 
# - 'test/y_test.txt': Test labels.
# 
# The following files are available for the train and test data. Their descriptions are equivalent. 
# 
# - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 



##### READ IN ALL TEXT FILES #####

# Read in the activity labels
activity.labels <- read.table(file.path(rootpath, "activity_labels.txt" ),header = FALSE)

# Read in the train and test labels of Activities
labels.train <- read.table(file.path(rootpath, "train" , "Y_train.txt" ),header = FALSE)
labels.test  <- read.table(file.path(rootpath, "test" , "Y_test.txt" ),header = FALSE)

# Read in feature names
features <- read.table(file.path(rootpath, "features.txt" ),header = FALSE)

# Read in the train and test data sets
dataset.train <- read.table(file.path(rootpath, "train" , "X_train.txt" ),header = FALSE)
dataset.test  <- read.table(file.path(rootpath, "test" , "X_test.txt" ),header = FALSE)

# Read in the train and test Subject files
subject.train <- read.table(file.path(rootpath, "train" , "subject_train.txt" ),header = FALSE)
subject.test  <- read.table(file.path(rootpath, "test" , "subject_test.txt" ),header = FALSE)







#####  1) Merges (Row bind) the training and the test sets to create one data set. #####
  labels <- rbind(labels.train,labels.test)
  dataset <- rbind(dataset.train,dataset.test)
  subject <- rbind(subject.train,subject.test)
  
  
  # Add Name
  names(labels) <- c("activity")
  names(subject) <- c("subject")
  names(dataset) <- features$V2
  
  
  # Combine all as columns
  alldata <- cbind(subject,labels,dataset)



#####  2) Extracts only the measurements on the mean and standard deviation for each measurement. #####  
  extract.cols <- c("activity", "subject",names(alldata)[grep("mean\\(\\)|std\\(\\)",names(alldata)) ]  ) 
  length(extract.cols)
  
  alldata1 <-alldata[,extract.cols]




##### 3) Uses descriptive activity names to name the activities in the data set ##### 
  alldata1$activity <- factor(alldata1$activity,levels=activity.labels$V1,labels=activity.labels$V2)



##### 4) Appropriately labels the data set with descriptive variable names.  ##### 
  # This dataset has already been updated with descriptive variables in Step#1 !!!
  # Here is an attempt to make the varnames more readable
  
  # Variable names starting with 't' converted to 'time'
  names(alldata1) <- gsub("^t","time",names(alldata1))
  
  # Variable names starting with 'f' converted to 'freq' for frequency
  names(alldata1) <- gsub("^f","freq",names(alldata1))


  names(alldata1)

##### 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for 
#####    each activity and each subject.
library(plyr)
alldata2 <- aggregate(.~activity+subject, alldata1,mean)
alldata2 <- arrange(alldata2,activity,subject)
write.table(alldata2, file = file.path(".","tidydata.txt"),sep=',',row.name=FALSE)
