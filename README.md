This is a readme document for Getting and Cleaning Data Course Project related to wearable electronics. 

The primary goal of the project is to obtain tidy dataset with clear description of what was done and how it can be used further. Raw data for the project can be found at the following location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unfortunately the raw data description provides ambiguity in interpreting source files, so several underlying assumptions were made and stated in the codebook and the stress in this project was to provide the clear documentation of what was done (not on the volumes of output variables).

The repository consists of 3 files:
- README.md, this one, with the general description of the course project;
- CodeBook.md, a codebook, which describes transformations made;
- run_analysis.R, the script that cleans up the data;
- tidy_data.csv, the output of the script.

To run the data analysis, follow the steps below:
- download the file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- unzip its content to some directory (referreded WORK_DIRECTORY further), so that UCI HAR Dataset is located under WORK_DIRECTORY (as "WORK_DIRECTORY/UCI HAR Dataset")
- download run_analysis.R from the repository and place it to WORK_DIRECTORY
- run the run_analysis.R script
- the output will be available in tidy_data.csv, which format is described in the CodeBook.md
