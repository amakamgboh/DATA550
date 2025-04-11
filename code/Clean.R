knitr::opts_chunk$set(echo = TRUE)
# install.packages("knitr") 
# install.packages("kableExtra")  
library(readxl)
library(dplyr)
library(ggplot2)
library(kableExtra)

library(readxl)
file_path <- "Home/Downloads/Georgia_DPH_PUBLIC_Vaccination_Public_Data_in_Excel.xlsx"
df <- read_excel("~/Downloads/Georgia_DPH_PUBLIC_Vaccination_Public_Data_in_Excel.xlsx", 
                 sheet = "COUNTY_SUMMARY")


head(df)
colnames(df)