#load in the packages
knitr::opts_chunk$set(echo = TRUE)

library(readr)
library(tidyverse)
library(dplyr)

#read in the data
raw_data <- read.csv("https://query.data.world/s/ni2vh2lfsi4qm3ytuiijjn7fpgkxyc", header=TRUE, stringsAsFactors=FALSE)

#change the variable names
names(raw_data)[6] <- "revenue"
names(raw_data)[7] <- "growth_in_percentage"
names(raw_data)[8] <- "industry"
names(raw_data)[9] <- "num_of_workers"
names(raw_data)[10] <- "year_founded"
names(raw_data)[11] <- "num_of_years_onlist"
names(raw_data)[12] <- "pre_num_of_workers"
raw_data$year_founded[raw_data$year_founded == 0] <- 2010

#choose the columns we need
#data1 is for graphing 
data1 <- raw_data %>%
  select(name, state, revenue, growth_in_percentage, industry, num_of_workers, year_founded, num_of_years_onlist, pre_num_of_workers)

#data2 is for data preview
data2 = data1
data2 <- data2 %>%
  rename(growth = growth_in_percentage,
         wnow = num_of_workers,
         yf=year_founded,
         yol = num_of_years_onlist,
         wpre = pre_num_of_workers)

#change the variable names to make it shorter
data2$industry[data2$industry == "Advertising & Marketing"] <- "Marketing"
data2$industry[data2$industry == "Logistics & Transportation"] <- "Transportation"
data2$industry[data2$industry == "Consumer Products & Services"] <- "To C products"

