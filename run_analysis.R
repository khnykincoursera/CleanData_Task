## reading subject data
dtrainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)
dtestSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)

## appending subject data and cleaning up memory
dataSubject <- rbind(dtrainSubject, dtestSubject)
rm(dtrainSubject)
rm(dtestSubject)

## reading activity data
dtrainActivity <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)
dtestActivity <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE)

## appending subject data and cleaning up memory
dataActivity <- rbind(dtrainActivity, dtestActivity)
rm(dtrainActivity)
rm(dtestActivity)

## reading main data, only columns with mean/std to optimize memory usage
w <- c(
	rep(16, 6), # at 1
	-560, 
	rep(16, 6), # at 41
	-560, 
	rep(16, 6), # at 81
	-560, 
	rep(16, 6), # at 121
	-560,
	rep(16, 6), # at 161
	-560,
	rep(16, 2), # at 201
	-176,
	rep(16, 2), # at 214
	-176,
	rep(16, 2), # at 227
	-176,
	rep(16, 2), # at 240
	-176,
	rep(16, 2), # at 253
	-176,
	rep(16, 6), # at 266
	-1168,
	rep(16, 6), # at 345
	-1168,
	rep(16, 6), # at 424
	-1168,
	rep(16, 2), # at 503
	-176,
	rep(16, 2), # at 516
	-176,
	rep(16, 2), # at 529
	-176,
	rep(16, 2)  # at 542
	)
dtrainX <- read.fwf("UCI HAR Dataset/train/X_train.txt", widths=w, header=FALSE, colClasses=c(rep("numeric", 65)))
dtestX <-  read.fwf("UCI HAR Dataset/test/X_test.txt", widths=w, header=FALSE, colClasses=c(rep("numeric", 65)))

## appending main data and cleaning up memory
dataX <- rbind(dtrainX, dtestX)
rm(dtrainX)
rm(dtestX)

## combine all data together
dataAll <- cbind(dataSubject, dataActivity, dataX)

## renaming columns to proper names
names(dataAll) <- c(
	"SubjectID", 
	"ActivityID", 
	"tBodyAcc_mean_X", 
	"tBodyAcc_mean_Y", 
	"tBodyAcc_mean_Z", 
	"tBodyAcc_std_X", 
	"tBodyAcc_std_Y", 
	"tBodyAcc_std_Z", 
	"tGravityAcc_mean_X", 
	"tGravityAcc_mean_Y", 
	"tGravityAcc_mean_Z", 
	"tGravityAcc_std_X", 
	"tGravityAcc_std_Y", 
	"tGravityAcc_std_Z", 
	"tBodyAccJerk_mean_X", 
	"tBodyAccJerk_mean_Y", 
	"tBodyAccJerk_mean_Z", 
	"tBodyAccJerk_std_X", 
	"tBodyAccJerk_std_Y", 
	"tBodyAccJerk_std_Z", 
	"tBodyGyro_mean_X", 
	"tBodyGyro_mean_Y", 
	"tBodyGyro_mean_Z", 
	"tBodyGyro_std_X", 
	"tBodyGyro_std_Y", 
	"tBodyGyro_std_Z", 
	"tBodyGyroJerk_mean_X", 
	"tBodyGyroJerk_mean_Y", 
	"tBodyGyroJerk_mean_Z", 
	"tBodyGyroJerk_std_X", 
	"tBodyGyroJerk_std_Y", 
	"tBodyGyroJerk_std_Z", 
	"tBodyAccMag_mean", 
	"tBodyAccMag_std", 
	"tGravityAccMag_mean", 
	"tGravityAccMag_std", 
	"tBodyAccJerkMag_mean", 
	"tBodyAccJerkMag_std", 
	"tBodyGyroMag_mean", 
	"tBodyGyroMag_std", 
	"tBodyGyroJerkMag_mean", 
	"tBodyGyroJerkMag_std", 
	"fBodyAcc_mean_X", 
	"fBodyAcc_mean_Y", 
	"fBodyAcc_mean_Z", 
	"fBodyAcc_std_X", 
	"fBodyAcc_std_Y", 
	"fBodyAcc_std_Z", 
	"fBodyAccJerk_mean_X", 
	"fBodyAccJerk_mean_Y", 
	"fBodyAccJerk_mean_Z", 
	"fBodyAccJerk_std_X", 
	"fBodyAccJerk_std_Y", 
	"fBodyAccJerk_std_Z", 
	"fBodyGyro_mean_X", 
	"fBodyGyro_mean_Y", 
	"fBodyGyro_mean_Z", 
	"fBodyGyro_std_X", 
	"fBodyGyro_std_Y", 
	"fBodyGyro_std_Z", 
	"fBodyAccMag_mean", 
	"fBodyAccMag_std", 
	"fBodyAccJerkMag_mean", 
	"fBodyAccJerkMag_std", 
	"fBodyGyroMag_mean", 
	"fBodyGyroMag_std", 
	"fBodyGyroJerkMag_mean", 
	"fBodyGyroJerkMag_std"
	)

## saving data
write.table(dataAll, file="tidy_data.csv", row.names=FALSE)


