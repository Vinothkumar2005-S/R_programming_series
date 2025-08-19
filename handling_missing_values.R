library(dplyr)
library(tidyr)

df <- read.csv("E:\\sql files\\finalize sales report.csv")


## handling missing values 
colSums(is.na(df))

df_1 <- read.csv("E:\\data sets\\air_index.csv")

df_excel <- read.csv("C:\\Users\\Admin\\Downloads\\customer_transactions.csv", na.strings = c("NA","0"))

## find out the is_na values in table 
colSums(is.na(df_excel))

View(df_excel)
## remove the email when NA is present
df_cleaned1 <- df_excel %>% drop_na("Email")

# replace with NA to 0 values in table 

df_cleaned1$Transaction_Amount[is.na(df_cleaned1$Transaction_Amount)] <- 0
## replace with mean of transaction_Amount

 
df_excel$Transaction_Amount[is.na(df_excel$Transaction_Amount)] <- mean(df_excel$Transaction_Amount , na.rm = TRUE)

df_excel <- read.csv("C:\\Users\\Admin\\Downloads\\customer_transactions.csv", na.strings = c("","NA"))

df_excel <- read.csv("C:\\Users\\Admin\\Downloads\\customer_transactions.csv", na.strings = c("183.314","NA"))


df_cleaned1$Customer_Name[is.na(df_cleaned1$Customer_Name)] <- "UNKNOWN"

rm(df,df_1,df_cleaned)
