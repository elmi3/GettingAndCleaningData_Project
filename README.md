# Project Overview
This project demonstrates data cleaning and preparation of a dataset to produce a tidy dataset for further analysis. The script merges, cleans, and transforms raw data into a structured and analyzable format.

# Files and Repository
- `run_analysis.R`: The main R script that performs data loading, cleaning, and transformation.
- `tidy_data_set.txt`: The final tidy dataset produced by `run_analysis.R`.
- `CodeBook.md`: A codebook detailing the variables, data, and transformations applied.
- `README.md`: This file, which provides an overview and instructions.

# Instructions for Running the Script

**Clone the repository**
`git clone https://github.com/elmi3/GettingAndCleaningData_Project`

**Set the working directory to the project folder**
`setwd("path/to/GettingAndCleaningData_Project")`

**Run the script**
`source("run_analysis.R")`

# Description of Output
The `tidy_data_set.csv` file contains the average of each variable for each activity and each subject. Each row represents a unique combination of subject and activity, with columns showing the mean of each measurement variable.