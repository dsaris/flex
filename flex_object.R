#This file contains codes for saving objects for reports in the flexdashboard
library(tidyverse)
library(lubridate)
# OVH KILN 4 2021
#link file = "https://docs.google.com/spreadsheets/d/e/2PACX-1vRU8uTN3BIn8o1E76jrL13uKdaqILveDCNd-qUbJnSypXiMYbF7-dYXESZyHh1BkAg9l-uaLaUUWQgU/pub?gid=0&single=true&output=csv"
# Nama File = "real_ovh_kiln4_2021"

ovh_kl4_21 <- read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vRU8uTN3BIn8o1E76jrL13uKdaqILveDCNd-qUbJnSypXiMYbF7-dYXESZyHh1BkAg9l-uaLaUUWQgU/pub?gid=0&single=true&output=csv")

glimpse(ovh_kl4_21)
sum_uk_ovh_kl4_21 <- ovh_kl4_21 %>% 
  group_by(NAMA.SEKSI.PG) %>% 
  summarise(Amount = sum(Amount.in.LC, na.rm = TRUE)) %>% 
  arrange(desc(Amount))
  
  



