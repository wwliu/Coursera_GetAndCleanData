# Coursera, Getting and Cleaning Data, Assignment 1
#### File: ReadMe
#### Date: 24-05-2014
#### Version: 1.0
#### By: Wai-Wah Liu

This file accompanies the "run_analysis.R" file that has been created for the first assignment of the "getting and cleaning data" course. It will explain each step of the R syntax. Some parts are self explanatory and will not be explained. 

#### Step 1: Merging training and test set
The parts A,B and C load in the data in the R console. These are subject ID, activity the person performed and the actual data from the test set. Then in part D, a variable is created so that when the test and training sets are merged, it still can be identified which subject belongs to the test set and which to the training set. In part E all three seperate files are merged into one. In parts H through M this process is repeated for the training set. The part O merge both the test set and training set into one final data set.

#### Step 2: Extract mean and standard deviation variables
The actual data contains 561 variables. However not all are needed in this assignment. Only variables measuring the mean or standard deviaton are. The merged data set does not yet contain the variable names. These are stored in a seperate file that is loaded with part A and get attached to the data set. Then part B searches in the 561 variable names for either "mean" or "std" and taggs them. Part C keeps all the tagged variables and the "subject", "label and "activity" variable. Now a data frame is created with 10.299 observations and 82 variables.

#### Step 3: Descriptive activity names to name the activities
As of now the activity a person is performing is simply coded as a 1,2,3,4,5 or 6. One cannot know which is which. Part A labels the numbers so that 1 is represented as "walking", 2 as "walking  upstairs", etc. This variable is the only non-numerical variable (a categorical one) that needs labeling.

#### Step 4: Label the variables in the data set
Almost all variables contain "strange" characters like "(",")", underscores and the like. For variable names this is not recommended. To create descriptive and tidy variable names the following R style guide is used:

http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml

**What it says about variable names:**
Don't use underscores ( _ ) or hyphens ( - ) in identifiers. Identifiers should be named according to the following conventions. The preferred form for variable names is all lower case letters and words separated with dots (variable.name), but variableName is also accepted; function names have initial capital letters and no dots (FunctionName); constants are named like functions but with an initial k. 

* variable.name is preferred, variableName is accepted
* GOOD: avg.clicks
* OK: avgClicks 
* BAD: avg_Clicks 
* FunctionName 
* GOOD: CalculateAvgClicks 
* BAD: calculate_avg_clicks , calculateAvgClicks 
* Make function names verbs. 
* Exception: When creating a classed object, the function name (constructor) and * class should match (e.g., lm). 
* kConstantName 


First everything is set to lower case (part A). Then the "strange" characters are removed and all chunks of the variable name are nicely seperated out. The variable name now looks something like this: "t.body.acc.mean.z". The first letter means the variable is measured in the time domain (t) or frequency domain (f). "Body" or "gravity" means that they're either body or gravity signals. "Acc" or "gyro" means the signal is from the accelerometer or gyroscope. "Jerk" is the term for a sudden motion. "Mag" is magnitude. "meanfreq" is the mean frequency, std" is standard deviation and "x","y", or "z" stand for the corresponding axis. So one can see relatively clear that "t.body.acc.mean.z" means "the mean body signal of the accelerometer z-axis of the time domain". The parts in the variable names are kept shortened because the variable names would otherwise be really long.

#### Step 5: Create tidy data set with averages by subject and activity
The tidy data set is created with the "aggregate" function (part A) which enables calculation of the mean for every subject and activity combined. For each subject the mean of all the variables are calculated by every activity. Duplicate columns from the transformation are deleted and columns renamed again (part B). Also due to the transformation the variable "type" (subject from test or training set) is deleted. Part C adds this back. The final part saves the R object as a csv data file. There are 30 subjects and 6 activities. So this data set contains (30*6) observations on 79 measurement variables, 1 subject ID variable, 1 label variable and 1 type variable.