
### Introduction

This repository contains R code for the assignment of the DataScience track's "Getting and Cleaning Data".


### Data Set

The data source is [UCI](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Execution and files


The file `CodeBook.md` describes the variables, the data, and the work that has been performed to clean up the data.

The file `run_analysis.R` is R script that performs this analysis and writes the output data.

The file `tidydata.txt` file is created by above script, and contains aggregate values for mean and standard deviation of each measure BY `Activity` level and `Subject`. It is stored in `UCI HAR Dataset/` directory, and uploaded into the assignment page.