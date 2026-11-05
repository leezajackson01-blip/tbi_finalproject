here::i_am("code/02_make_figure.R")
library(ggplot2)

absolute_path_to_data <- here::here("data", "raw_data.csv")
data <- read.csv(absolute_path_to_data, header = TRUE)

fig <- ggplot(data, aes(x= Year)) +
  geom_line(aes(y = Men, color = "Men")) +
  geom_point(aes(y = Men, color = "Men")) +
  geom_line(aes(y = Women, color = "Women")) +
  geom_point(aes(y = Women, color = "Women")) +
  scale_x_continuous(breaks = 2001:2010) +
  scale_y_continuous(limits = c(0, 1000)) +
  labs(title = "Rates of TBI by sex, from 2001-2010",
       x = "Year",
       y = "Rate per 100,000 people",
       color = "Sex") +
  theme_classic()
ggsave(here::here("output", "figure1.png"))