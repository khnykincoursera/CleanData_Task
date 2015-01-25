This is a readme document for Getting and Cleaning Data Course Project related to wearable electronics. The file consists of two sections:
- data transformation;
- output data format.


Data Transformation
===================

Initial Data
------------

Initial data were obtained from the following source: "Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012". Their complete work results can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The archive contains "UCI HAR Dataset" directory, all file names within this section will be referred related to this directory (e.g. "./train/X_train.txt" is a "X_train.txt" file from "train" subdirectory of "UCI HAR Dataset" directory of the archive).

Underlying Source Data Assumptions
----------------------------------

1. Source data are present in ./test/, ./train/ directories, and, according to ./README.txt, the data were randomly distributed (70% for training and 30% for test data), so all data are appended before further processing: training data goes first, then test data follows.

2. It is assumed that data in the files ./train/subject_train.txt, ./train/Y_train.txt, ./train/X_train.txt correspond line by line to each other.

3. It is assumed that data in the files ./test/subject_test.txt, ./test/Y_test.txt, ./test/X_test.txt correspond line by line to each other.

4. It is assumed that data in the files ./train/X_train.txt, ./test/X_test.txt is described column by column in ./features.txt.

Actual Data Transsformation
---------------------------

1. ./train/subject_train.txt and ./test/subject_test.txt files are merged, a single numeric value per line is taken as SubjectID.

2. ./train/Y_train.txt and ./test/Y_test.txt are merged, a single numeric value per line is taken as ActivityID.

3. ./train/X_train.txt and ./test/X_test.txt are merged. Each line is considered as fixed-width row with numeric values, 16 characters each. Columns 1-6, 41-46, 81-86, 121-126, 161-186, 201-206, 214, 215, 227, 228, 240, 241, 253, 254, 266-271, 345-350, 424-429, 503, 504, 516, 517, 529, 530, 542, 543 are taken. Corresponding names are provided in Output Data Format section.


Output Data Format
==================

The output data is placed to the following file: tidy_data.csv. It contains records, in .csv format. No header line is provided. Variables are the following:

1. SubjectID
An integer, representing ID of a subject.

2. ActivityID
An integer, representing ID of an activity (1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 5 STANDING, 6 LAYING).

NOTE: All readings below are physical readings or their processing results. They are normalized to [-1; 1], no measure units are preserved. All values are real numbers.
3. tBodyAcc_mean_X - Mean of Body Acceleration in X axis
4. tBodyAcc_mean_Y - Mean of Body Acceleration in Y axis
5. tBodyAcc_mean_Z - Mean of Body Acceleration in Z axis
6. tBodyAcc_std_X - StD of Body Acceleration in X axis
7. tBodyAcc_std_Y - StD of Body Acceleration in Y axis
8. tBodyAcc_std_Z - StD of Body Acceleration in Z axis
9. tGravityAcc_mean_X - Mean of Gravity Acceleration in X axis
10. tGravityAcc_mean_Y - Mean of Gravity Acceleration in Y axis
11. tGravityAcc_mean_Z - Mean of Gravity Acceleration in Z axis
12. tGravityAcc_std_X - StD of Gravity Acceleration in X axis
13. tGravityAcc_std_Y - StD of Gravity Acceleration in X axis
14. tGravityAcc_std_Z - StD of Gravity Acceleration in X axis
15. tBodyAccJerk_mean_X - Mean of Body Jerk in X axis
16. tBodyAccJerk_mean_Y - Mean of Body Jerk in Y axis
17. tBodyAccJerk_mean_Z - Mean of Body Jerk in Z axis
18. tBodyAccJerk_std_X - StD of Body Jerk in X axis
19. tBodyAccJerk_std_Y - StD of Body Jerk in Y axis
20. tBodyAccJerk_std_Z - StD of Body Jerk in Z axis
21. tBodyGyro_mean_X - Mean of Body Angle Acceleration in X axis
22. tBodyGyro_mean_Y - Mean of Body Angle Acceleration in Y axis
23. tBodyGyro_mean_Z - Mean of Body Angle Acceleration in Z axis
24. tBodyGyro_std_X - Mean of Body Angle Acceleration in X axis
25. tBodyGyro_std_Y - Mean of Body Angle Acceleration in Y axis
26. tBodyGyro_std_Z - Mean of Body Angle Acceleration in Z axis
27. tBodyGyroJerk_mean_X - Mean of Body Gyroscopic Jerk in X axis
28. tBodyGyroJerk_mean_Y - Mean of Body Gyroscopic Jerk in Y axis
29. tBodyGyroJerk_mean_Z - Mean of Body Gyroscopic Jerk in Z axis
30. tBodyGyroJerk_std_X - Mean of Body Gyroscopic Jerk in X axis
31. tBodyGyroJerk_std_Y - Mean of Body Gyroscopic Jerk in Y axis
32. tBodyGyroJerk_std_Z - Mean of Body Gyroscopic Jerk in Z axis
33. tBodyAccMag_mean - Mean of Body Acceleration Magnitude
34. tBodyAccMag_std - Std of Body Acceleration Magnitude
35. tGravityAccMag_mean - Mean of Gravity Acceleration Magnitude
36. tGravityAccMag_std - StD of Gravity Acceleration Magnitude
37. tBodyAccJerkMag_mean - Mean of Body Jerk Magnitude
38. tBodyAccJerkMag_std - StD of Body Jerk Magnitude
39. tBodyGyroMag_mean - Mean of Body Angle Acceleration Magnitude
40. tBodyGyroMag_std - StD of Body Angle Acceleration Magnitude
41. tBodyGyroJerkMag_mean - Mean of Body Jerk Magnitude
42. tBodyGyroJerkMag_std - StD of Body Jerk Magnitude
43. fBodyAcc_mean_X - Mean of FFT on Body Acceleration in X axis
44. fBodyAcc_mean_Y - Mean of FFT on Body Acceleration in Y axis
45. fBodyAcc_mean_Z - Mean of FFT on Body Acceleration in Z axis
46. fBodyAcc_std_X - StD of FFT on Body Acceleration in X axis
47. fBodyAcc_std_Y - StD of FFT on Body Acceleration in Y axis
48. fBodyAcc_std_Z - StD of FFT on Body Acceleration in Z axis
49. fBodyAccJerk_mean_X - Mean of FFT on Body Jerk in X axis
50. fBodyAccJerk_mean_Y - Mean of FFT on Body Jerk in Y axis
51. fBodyAccJerk_mean_Z - Mean of FFT on Body Jerk in Z axis
52. fBodyAccJerk_std_X - StD of FFT on Body Jerk in X axis
53. fBodyAccJerk_std_Y - StD of FFT on Body Jerk in Y axis
54. fBodyAccJerk_std_Z - StD of FFT on Body Jerk in Z axis
55. fBodyGyro_mean_X - Mean of FFT on Body Angle Acceleration in X axis
56. fBodyGyro_mean_Y - Mean of FFT on Body Angle Acceleration in Y axis
57. fBodyGyro_mean_Z - Mean of FFT on Body Angle Acceleration in Z axis
58. fBodyGyro_std_X - StD of FFT on Body Angle Acceleration in X axis
59. fBodyGyro_std_Y - StD of FFT on Body Angle Acceleration in Y axis
60. fBodyGyro_std_Z - StD of FFT on Body Angle Acceleration in Z axis
61. fBodyAccMag_mean - Mean of FFT on Body Acceleration Magnitude
62. fBodyAccMag_std - StD of FFT on Body Acceleration Magnitude
63. fBodyAccJerkMag_mean - Mean of FFT on Body Jerk Magnitude
64. fBodyAccJerkMag_std - StD of FFT on Body Jerk Magnitude
65. fBodyGyroMag_mean - Mean of FFT on Body Angle Acceleration Magnitude
66. fBodyGyroMag_std - StD of FFT on Body Angle Acceleration Magnitude
67. fBodyGyroJerkMag_mean - Mean of FFT on Body Gyroscopic Jerk Magnitude
68. fBodyGyroJerkMag_std - StD of FFT on Body Gyroscopic Jerk Magnitude














