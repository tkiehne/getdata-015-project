# Getting &amp; Cleaning Data Course Project

The script "run_analysis.R" manipulates the dataset of human activity data collected from the accelerometers from the Samsung Galaxy S smartphone.  A full description of the experimental data can be found at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


## Setup

Before running the script, [download the data sets](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unpack the archive into your R working directory.  After unpacking the archive, data should be stored in a directory named "UCI HAR Dataset."  Leave the original directory structure intact.

The file "README.txt" contains more detail about the included data files.


## Dependencies

This script depends on the following R packages:

* [dplyr: A Grammar of Data Manipulation](http://cran.r-project.org/web/packages/dplyr)
* [reshape2: Flexibly Reshape Data: A Reboot of the Reshape Package](http://cran.r-project.org/web/packages/reshape2/)
* [magrittr: A Forward-Pipe Operator for R](http://cran.r-project.org/web/packages/magrittr/)

Install these packages before running the script.  The script will automatically load the packages if they are installed.


## Data Manipulation

To run the script, type the function HARMerge() and (ideally) assign it to a variable.  HARMerge() performs the following transformations on the data sets:

1. Global smartphone "feature" names are preloaded from "features.txt."  These names are used to provide human-readable column names for the observation data sets.  After being loaded, the names are converted to R-safe variable names using make.names() after the function call parentheses in the names (e.g.: "()") are converted to underscores and certain other abnormalities are corrected.  The underscores will be used to help identify certain feature names of interest in step 6.

2. Global activity labels are preloaded from "activity_labels.txt." These labels will be used to convert numeric activity indexes to human-readable names.

3. Test and Training subject data are loaded and concatenated into a single data frame via read.table() and rbind() - Test rows first, followed by Training rows - and assigned a column name of "Subject."

4. Test and Training activity data are loaded and concatenated into a single data frame via read.table() and rbind() - Test rows first, followed by Training rows - and assigned a column name of "Activity."

5. Test and Training observation data are loaded and concatenated into a single data frame via read.table() and rbind() - Test observation rows first, followed by Training observations - and assigned column names using the preloaded feature names from step 1 above. This operation takes some time to complete.

6. After the feature observations are loaded, all feature observations are removed except for those representing means and standard deviations, now identified in the column names by the inclusion of "mean _ " and "std _ " respectively.  Extraction of the desired columns is performed usign dplyr's select() function.

7. A single data frame is created using a straight cbind() call, subjects first, followed by activities, then observations.  The resulting data frame should contain 10,299 observations in 68 variables.

8. Upon merging the complete data set, activity IDs are replaced in the Activity column by applying a factor() call to the Activity column usign the preloaded activity names from step 2 above.

9. The merged data are then sorted using the dplyr arrange() function by Subject then Activity.  Note that Activity will follow the order of the global activity data file, not alphabetical order.

10. The merged data are then manipulated using reshape2's melt() and dcast() functions to produce an average of all mean and standard deviation observations for each Subject and Activity.  The resulting data frame contains 180 observations (30 subjects x 6 activities) with the same 68 variables.

11. Observation column names are renamed to append "_mean" to designate that they are average values for each observation for each subject/activity pair. Subject and Activity columns retain their original name.

The data frame is then returned and may be saved (e.g.: by write.table()) or further manipulated.


## Data Names

Full descriptions of each observation column are provided in CodeBook.md.
