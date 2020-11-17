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

# Parameters
  # Input File
file_raw <- here::here("covid-19-data/data-raw/us-counties.csv")

  # Output File
file_out <- here::here("covid-19-data/data/us-counties.rds")


#=======================================================================

#read_csv("data-raw/us-counties.csv")

file_raw %>% 
  read_csv(col_types = cols(
      date = col_date(), 
      county = col_character(),
      state = col_character(),
      fips = col_double(), 
      cases = col_double(),
      deaths = col_double()
      )
    ) %>%

      write_rds(file_out)
   
 









