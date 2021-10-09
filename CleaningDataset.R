#Group-3
#Unit: 8697
#Members: Santosh Shrestha(u3210561), 


#import libraries
library(readxl)
library(dplyr)
library(tidyr)




#code starts from here 
dataset <- read_xlsx(file.choose())

#how many columns and rows are there?
ncol(dataset)
nrow(dataset)

colnames(dataset) #colnames

#column names are not appropriate so we have to rename it 
#used dplyr to rename columns 
attach(dataset)
dataset <- dataset %>% rename(Min_Temp = `Minimum temperature (?C)`,
                              Max_Temp  = `Maximum temperature (?C)` ,
                              Rain_mm = `Rainfall (mm)`,
                              Evap_mm = `Evaporation (mm)`,
                              Sunshine_hr =  `Sunshine (hours)` ,
                              Max_wg_dir = `Direction of maximum wind gust`,
                              Max_wg_speed = `Speed of maximum wind gust (km/h)`,
                              Max_wg_time = `Time of maximum wind gust` ,
                              Temp_9am = `9am Temperature (?C)` ,
                              Rel_hmdty_9am = `9am relative humidity (%)`,
                              Cld_amt_9am = `9am cloud amount (oktas)`,
                              Wind_dir_9am = `9am wind direction` ,
                              Wind_speed_9am = `9am wind speed (km/h)`,
                              MSL_pressure_9am = `9am MSL pressure (hPa)`,
                              Temp_3pm = `3pm Temperature (?C)`,
                              Rel_hmdty_3pm = `3pm relative humidity (%)` ,
                              Cld_amt_3pm = `3pm cloud amount (oktas)` ,
                              Wind_dir_3pm = `3pm wind direction` ,
                              Wind_speed_3pm = `3pm wind speed (km/h)` ,
                              MSL_pressure_3pm = `3pm MSL pressure (hPa)` ) #column names renamed


head(dataset)
#View(dataset) to view dataframe

#checking missing values 
table(is.na(dataset))
#it shows this dataset has lots of missing values 
colSums(is.na(dataset)) # which column has how many missing values 

#checking datatypes 
glimpse(dataset)
unique(dataset$Cld_amt_3pm)
table(dataset$Wind_dir_9am)





