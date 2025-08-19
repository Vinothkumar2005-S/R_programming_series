library(dplyr)
library(tidyr)

df <- read.csv("C:\\Users\\Admin\\Downloads\\parks_and_recreation.csv")


agg_df <- 
  df %>%
  group_by(Department)%>%
  summarise(avg_salary = mean(Annual.Salary),
            count = n(),
            min(Annual.Salary),
            max(Annual.Salary),
            median(Annual.Salary))
  
            