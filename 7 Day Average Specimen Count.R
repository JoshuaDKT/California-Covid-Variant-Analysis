# load packages

library(tidyverse)
library(ggplot2)

# Base plot for weekly average specimen count

tempavgdata <- filter(variant_data, variant_name == "Total")

avgvariantplot <- ggplot(tempavgdata, aes(x = date, y = specimens_7d_avg, 
                                           group = 1))

# Total weekly average specimen count for one month

avgvariantplot + geom_line(tempavgdata[tempavgdata$date >= "2021-01-07" & 
                                          tempavgdata$date <= "2021-02-07",], 
                           mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("7d Specimen Avg For One Month") +
  ylab("Specimen Average")

# Three Months

avgvariantplot + geom_line(tempavgdata[tempavgdata$date >= "2021-01-07" & 
                                         tempavgdata$date <= "2021-04-07",], 
                           mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("7d Specimen Avg For Three Months") +
  ylab("Specimen Average")

# Six Months

avgvariantplot + geom_line(tempavgdata[tempavgdata$date >= "2021-01-07" & 
                                         tempavgdata$date <= "2021-07-07",], 
                           mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("7d Specimen Avg For Six Months") +
  ylab("Specimen Average")

# Nine Months

avgvariantplot + geom_line(tempavgdata[tempavgdata$date >= "2021-01-07" & 
                                         tempavgdata$date <= "2021-10-07",], 
                           mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("7d Specimen Avg For Nine Months") +
  ylab("Specimen Average")

# 12 Months

avgvariantplot + geom_line(tempavgdata[tempavgdata$date >= "2021-01-07" & 
                                         tempavgdata$date <= "2022-01-07",], 
                           mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("7d Specimen Avg For 12 Months") +
  ylab("Specimen Average")

# All Time

avgvariantplot + geom_line(tempavgdata[tempavgdata$date >= "2021-01-07" & 
                                         tempavgdata$date <= "2022-07-07",], 
                           mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("7d Specimen Avg For 12 Months") +
  ylab("Specimen Average")
