# import packages

library(tidyverse)
library(ggplot2)

# Total Variant Count Base Plot

totaltempdata2 <- filter(variant_data, variant_name == "Total")

totalplot <- ggplot(totaltempdata2, aes(x = date, y = specimens, group = 1))

# Total specimens after one week

totalplot +
  geom_line(totaltempdata2[totaltempdata2$date <= "2021-01-07",], 
            mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Total Specimens After One Month")

# Total Specimens After one month

totalplot +
  geom_line(totaltempdata2[totaltempdata2$date <= "2021-02-01",], 
            mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Total Specimens After One Month")

# Total Specimens after three months

totalplot +
  geom_line(totaltempdata2[totaltempdata2$date <= "2021-04-01",], 
            mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Total Specimens After Three Months")

# Total Specimens after six months

totalplot +
  geom_line(totaltempdata2[totaltempdata2$date <= "2021-07-01",], 
            mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Total Specimens After Six Months")

# Total Specimens Nine Months

totalplot +
  geom_line(totaltempdata2[totaltempdata2$date <= "2021-10-01",], 
            mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Total Specimens After Nine Months")

# Total Specimens 12 Months

totalplot +
  geom_line(totaltempdata2[totaltempdata2$date <= "2022-01-01",], 
            mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Total Specimens After 12 Months")

# Total Specimen Count For All Time (485 Days)

totalplot +
  geom_line(mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Total Specimens All Time")
