# Coursera assessment "Getting and Cleaning Data"

[Class homepage](https://class.coursera.org/getdata-010)

- Author: Robinson Montes <mecomontes@gmail.com>
- No Copyrights, Public Domain, July 2020
- Runnable source script: run_analysis.R

#### Task desrciption
(repeated in the source script "run_analysis.R" alongside the actual execution code):

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Please upload the tidy data set created in step 5 of the instructions. Please upload your data set as a txt file created with write.table() using row.name=FALSE
7. Please submit a link to a Github repo with the code for performing your analysis. The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. The output should be the tidy data set you submitted for part 1. You should include a README.md in the repo describing how the script works and the code book describing the variables.

### Results

**tidydata.txt** -- contains the final tidied output data.

**CodeBook.md** -- description of all variables

The description how the result has been achieved is contained within the source file "run_analysis.R".

This can be run as one big batch of instructions from the R console or RStudio. You just need to change the directory path in:
```
base_path <- '/home/meco/Desktop/Coursera/datasciencecoursera/course3'
```
and change it to your own working directory.

Otherwise the instructions from the R script can be executed and checked step by step for review.

The [data source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

is not included in the git repository. The R script downloads it into subdir named "TidyData" during runtime.

#### Analyzed source data

[data source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

#### Notes about data structure:

- "X_train.txt" has 7352 lines with sample values -> 561 columns, described by name in "features.txt" and with more info in "features_info.txt"
- "subject_train.txt" has 7352 lines with coded values for the person (subject)
- "y_train.txt" has 7352 lines with coded values for the activity

The same structure is repeated for test (replace "train" with "test" in file names, 2947 lines with measurement values which are added to the 7352 lines from the training set).

#### Analyze data license:

Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
