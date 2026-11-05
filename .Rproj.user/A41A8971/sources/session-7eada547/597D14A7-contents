here::i_am("code/01_make_table.R")
library(gt)

absolute_path_to_data <- here::here("data", "raw_data.csv")
data <- read.csv(absolute_path_to_data, header = TRUE)

table1 <- sum_table <- gt(data) |>
  tab_header(title = "Rate of TBI (per 100,000) by sex, 2001-2010")

gtsave(sum_table, here::here("output", "table1.png"))