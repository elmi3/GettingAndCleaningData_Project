########################################################################
### Peer-graded Assignment: Getting and Cleaning Data Course Project ###
### Possible Solution                                                ###
### created: 14. Nov 2024, by Elmi                                   ###
### https://github.com/elmi3/GettingAndCleaningData_Project          ###
########################################################################

library(data.table) # fread function
library(dplyr)      # pipeline functionalities

# train & test sets. subjects (subject_***.txt) added to the dataset (x_***.txt and y_***.txt)
df_train <- cbind(
  fread("./data/train/subject_train.txt"), 
  fread("./data/train/X_train.txt"), 
  fread("./data/train/y_train.txt"))
df_test <- cbind(
  fread("./data/test/subject_test.txt"), 
  fread("./data/test/X_test.txt"), 
  fread("./data/test/y_test.txt"))

# TASK 4: Get variable names, include subject_train to match the added activities
names <- c("subject", fread("./data/features.txt")$V2, "activity")

# TASK 1: combine train- & testset and assign variable names
df <- rbind(df_train, df_test)
colnames(df) <- names

# create new df that only contains mean, std, and activity variables
df_mean_std <- df %>%
  # TASK 2: Only extract mean, std, as well as subject and activity variables
  select(matches("mean\\(\\)|std\\(\\)") | "subject" | "activity") %>% 
  # TASK 3: descriptive activity names (from activity_labels.txt)
  mutate(activity = case_when(
    activity == 1 ~ "walking",
    activity == 2 ~ "walking_upstairs",
    activity == 3 ~ "walking_downstairs",
    activity == 4 ~ "sitting",
    activity == 5 ~ "standing",
    activity == 6 ~ "laying"
  ))

# TASK 5: create the grouped 
df_grouped <- df_mean_std %>%
  group_by(subject, activity) %>%
  summarize(across(everything(), mean, na.rm = TRUE), .groups = "drop")


# save output to tidy_data_set.csv
# write.table(df_grouped, "tidy_data_set.csv", sep = ",", row.names = FALSE)