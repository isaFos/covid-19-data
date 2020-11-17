# Data from NYT COVID Map.

# Source: https://www.nytimes.com/interactive/2020/us/coronavirus-us-cases.html

# Author: Isabelle Foster
# Version: 2020-10-12

# Libraries
library(tidyverse)
library(ggplot2)
library(here)
library(readr)
library(dplyr)
library(stringr)

# Parameters
# Input File

file_in <- here::here("covid-19-data/data/us-counties.rds")

# Output File

file_out <- here::here("covid-19-data/data/ca_data.rds")

#=======================================================================

  read_rds(file_in) %>%
  filter(state == "California") %>%
  write_rds(file_out)


