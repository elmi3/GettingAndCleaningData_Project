# Code Book

## Data Overview
The dataset consists of measurements from smartphone accelerometers and gyroscopes, collected from subjects performing various activities. 

## Variable Descriptions
- **subject**: ID of the subject (e.g., 1, 2, ...)
- **activity**: Name of the activity (e.g., "walking", "sitting")
- **tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z**: Mean body acceleration in the X, Y, and Z directions.
- **tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z**: Standard deviation of body acceleration in X, Y, and Z directions.

...

## Data Transformations and Cleaning Steps
1. **Merging Training and Test Sets**: Combined the training and test sets using `cbind()` and `rbind()`.
2. **Extracting Mean and Std Variables**: Selected only mean and standard deviation columns.
3. **Using Descriptive Activity Names**: Replaced numeric activity codes with descriptive names.
4. **Renaming Variables**: Applied descriptive names to columns based on `features.txt`.
5. **Grouping and Summarizing**: Created a tidy dataset by grouping by subject and activity and calculating averages for each measurement.

## Assumptions
- Only columns containing "mean()" or "std()" in the name were selected as relevant measurements.
