==================================================================
Tidy dataset based on Human Activity Recognition Using Smartphones Data
==================================================================
Manipulation into tidy format performed by Becky Reimer as part of 
the Getting and Cleaning Data course within the Data Science 
Specialization on Coursera.org
==================================================================

Original dataset provided by:

==================================================================

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

==================================================================

The description of raw data below was taken from the documentation 
of the original dataset:

==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 



The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The full original dataset and additional documentation can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


==================================================================

The dataset includes the following files:

=========================================

- 'README.md'

- 'tidydata.txt' - data file

- 'run_analysis.R' - an R script that transformed the original dataset
			into the tidy dataset

- 'Codebook.txt' - codebook file explaining the contents of the dataset



Each record of the tidy dataset 'tidydata.txt' includes:

======================================


- An activity label

- An identifier of the subject who carried out the experiment.

- A set of 79 mean measurement values for that particular activity and subject
	(Please see the codebook file for additional details about these values.)



The steps taken in the R script to transform the original data include:
======================================

- Import the test data and training data, and combine them into one file
- Read in the features file to obtain descriptive variable names for the above data
- Identify all variables that contained "mean" or "std" in their names
- Create a subset of the above data that only included these "mean" and "std" variables
- Clean up the variable names from the features file to remove parentheses and 
  substitute underscores for dashes
- Rename the variables in the above data file using the cleaned up names
- Read in the activity codes and subject numbers that correspond with the above data
  from separate files, combine test and training versions, assign new variable names,
  and then append these to the rest of the data
- Create means of all measures by activity and subject
- Write the data file out to a text file

======================================


For more information about the original dataset contact: activityrecognition@smartlab.ws



License:

========

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012



This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.



Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

