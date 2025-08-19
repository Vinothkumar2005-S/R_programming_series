library(dplyr)
library(tidyr)
library(lubridate)

df <- read.csv("E:\\sql files\\customer_transactions.csv")

df$Transaction_Date <- parse_date_time(df$Transaction_Date, orders = c("Y-m-d","m/d/Y","Y/m/d","d-m-Y"))

df_raw <- df
View(df_raw)

df$Transaction_Date_year <- year(df$Transaction_Date)

df$Transaction_Date_month <- month(df$Transaction_Date)
df$Transaction_Date_day <- day(df$Transaction_Date)


