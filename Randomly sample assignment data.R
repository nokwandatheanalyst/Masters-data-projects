rm(list=ls()) # remove everything in the global environment 

library(haven) # to read in the stata file 
library(dplyr) # for data manipulation

setwd("directory where your data is saved") # set your working directory 

#### Sample assignment 1 ####
assignment1_full_data <- read_dta("assignment1.dta")

set.seed(2023) # insert your random seed number here

data1_ids <- sample(unique(assignment1_full_data$id), size = 0.8*length(unique(assignment1_full_data$id)))
my_data1 <- assignment1_full_data %>% filter(id %in% data1_ids)
# my_data1 is the dataset you will work with for part 1 of the assignment (you can call it something else)

#### Sample assignment 2 ####
assignment2_full_data <- read_dta("assignment2.dta")

set.seed(2023)

data2_ids <- sample(unique(assignment2_full_data$pid), size = 0.8*length(unique(assignment2_full_data$pid)))
my_data2 <- assignment2_full_data %>% filter(pid %in% data2_ids)
# my_data2 is the dataset you will work with for part 2 of the assignment (you can call it something else)

