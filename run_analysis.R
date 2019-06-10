library(dplyr)

# import test data and training data
test <- read.table("test/X_test.txt")
train <- read.table("train/X_train.txt")

# combine these two datasets
alldata <- rbind(test, train)

# import features file to get variable names
features <- read.table("features.txt")
varnames <- features[, 2]

# use grep to identify indices and names for all variables that contain "mean" or "std"
# then paste these together 

# mean indices
meanvars <- grep("mean", varnames)

# mean names
meanvarnames <- grep("mean", varnames, value=TRUE)

# st dev indices
stdvars <- grep("std", varnames)

# st dev names
stdvarnames <- grep("std", varnames, value=TRUE)

# combined mean and st dev indices
meanstdvars <- c(meanvars, stdvars)

# combined mean and st dev names
meanstdvarnames <- c(meanvarnames, stdvarnames)

# subset the data to only include mean and std variable data
meanstddata <- alldata[, meanstdvars]

# remove parentheses from the variable names from the features file,
# substitute underscores for dashes,
# and then attach these as names in the new dataset
meanstdvarnames <- gsub("\\(", "", meanstdvarnames)
meanstdvarnames <- gsub("\\)", "", meanstdvarnames)
meanstdvarnames <- gsub("\\-", "_", meanstdvarnames)
names(meanstddata) <- meanstdvarnames

# import test data and training activity codes
testact <- read.table("test/Y_test.txt")
trainact <- read.table("train/Y_train.txt")

# combine the two activity datasets and rename the variable
allact <- rbind(testact, trainact)
allact <- rename(allact, activity=V1)

# import test and training subject info
testsub <- read.table("test/subject_test.txt")
trainsub <- read.table("train/subject_train.txt")

# combine the two subject datasets and rename the variable
allsub <- rbind(testsub, trainsub)
allsub <- rename(allsub, subject=V1)

# make a file with all mean and st dev data, with activity codes and
# subject info added
meanstddata2 <- cbind(meanstddata, allact, allsub)

# create means of all measures by activity and subject
tidydata <- meanstddata2 %>% group_by(activity, subject) %>% summarize_each(funs(mean))

# write the data file out to a text file
write.table(tidydata, file="tidydata.txt", row.name=FALSE) 