library(dplyr)
library(reshape2)
library(magrittr)

HARMerge <- function() {
  
  # preload feature column names
  feat <- read.table("UCI HAR Dataset/features.txt", sep=" ", stringsAsFactors = F)
  activities <- read.table("UCI HAR Dataset/activity_labels.txt", sep=" ", stringsAsFactors = F)
  
  # normalize column names; replace function brackets () with underscores _
  test_col_names <- make.names(gsub("\\(\\)", "_", feat$V2))
  
  # Step 4 - Appropriately labels the data set with descriptive variable names. as part of the load
  subj <- do.call("rbind", lapply(c("UCI HAR Dataset/test/subject_test.txt", "UCI HAR Dataset/train/subject_train.txt"), function(fn) read.table(fn, col.names = c("Subject"))))
  act <- do.call("rbind", lapply(c("UCI HAR Dataset/test/y_test.txt", "UCI HAR Dataset/train/y_train.txt"), function(fn) read.table(fn, col.names = c("Activity"))))
  test <- do.call("rbind", lapply(c("UCI HAR Dataset/test/X_test.txt", "UCI HAR Dataset/train/X_train.txt"), function(fn) read.table(fn, col.names = test_col_names)))
              
  # Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
  test <- select(test, matches(".*\\.mean_\\..*|.*\\.std_\\..*", ignore.case = F))
  
  # Step 1 - Merges the training and the test sets to create one data set.
  merged <- cbind(subj, act, test)
 
  # Step 3 - Uses descriptive activity names to name the activities in the data set
  merged$Activity <- factor(merged$Activity, levels = 1:nrow(activities), labels = activities$V2)
  
  # sort for neatness
  merged <- arrange(merged, Subject, Activity)
  
  # Step 5 - From the data set in step 4, creates a second, independent tidy data set 
  #          with the average of each variable for each activity and each subject
  melted <- melt(merged, id.vars = c("Subject","Activity"))
  casted <- dcast(melted, Subject + Activity ~ variable, mean)
  names(casted)[-c(1,2)] %<>% paste0("_mean")
  
  # return the data
  casted
}

