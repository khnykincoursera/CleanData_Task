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

## saving data
write.table(dataAll, file="tidy_data.csv", row.names=FALSE)


