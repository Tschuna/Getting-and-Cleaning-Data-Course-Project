## Set the local file containing the Samsung data as your working directory 
setwd("UCI HAR Dataset")

## Read the training and test data sets and combine
testData <- read.table("test/X_test.txt")
trainData <- read.table("train/X_train.txt")
X <- rbind(testData, trainData)

## Optional: Remove unneeded data from the Global Environment
rm(testData)
rm(trainData)

## Read the training and test subjects and combine
testSub <- read.table("test/subject_test.txt")
trainSub <- read.table("train/subject_train.txt")
S <- rbind(testSub, trainSub)

## Optional: Remove unneeded data from the Global Environment
rm(testSub)
rm(trainSub)

## Read the training and test data labels and combine
testLabel <- read.table("test/y_test.txt")
trainLabel <- read.table("train/y_train.txt")
Y <- rbind(testLabel, trainLabel)

## Optional: Remove unneeded data from the Global Environment
rm(testLabel)
rm(trainLabel)

## Read the features list 
featuresList <- read.table("features.txt", stringsAsFactors=FALSE)

## Use only the names from the features list
features <- featuresList$V2

## Create a logical vector to keep only the standard deviation and mean columns
keepColumns <- grepl("(std|mean[^F])", features, perl=TRUE)

## Keep only the measurements on the standard deviation and mean for each measurement
X <- X[, keepColumns]
names(X) <- features[keepColumns]

## Clean names
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))

## Read the activity list and use descriptive activity names 
## to name the activities in the data set
activities <- read.table("activity_labels.txt")
activities[,2] = gsub("_", "", tolower(as.character(activities[,2])))
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity" 

## Add clean labels to the activity names and create the tidy data set
names(S) <- "subject"
tidyData <- cbind(S, Y, X)

## Upload the tidy data set as a txt file
write.table(tidyData, "tidyData_step4.txt")

## Create a second, independent tidy data set with the average of each 
## variable for each activity and each subject
uS = unique(S)[,1]
nS = length(uS)
nA = length(activities[,1])
nC = length(names(tidyData))
td = tidyData[ 1:(nS*nA), ]

row = 1
for (s in 1:nS) {
  for (a in 1:nA) {
    td[row,1] = uS[s]
    td[row,2] = activities[a, 2]
    tmp <- tidyData[tidyData$subject==s & tidyData$activity==activities[a,2],]
    td[row, 3:nC] <- colMeans(tmp[, 3:nC])
    row = row + 1
  }
}

## Upload the second tidy data set as a txt file
write.table(td, "tidyData_step5.txt")