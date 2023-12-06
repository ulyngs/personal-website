library(tidyverse)
library(googlesheets4)
gs4_deauth()

store_sheet_in_csv <- function(sheet_name){
  read_sheet("https://docs.google.com/spreadsheets/d/1ta71CAGkcLqm-W1UdVRA_JJSddWV2TsrRZsCnQlmOis/edit?usp=sharing",
             sheet = sheet_name, col_types = c("c")) %>% 
    write_csv(here::here(str_c("data/", sheet_name, ".csv")))
}

sheets <- c("projects", 
            "cv_entries", 
            "publications")

#walk(sheets, store_sheet_in_csv)