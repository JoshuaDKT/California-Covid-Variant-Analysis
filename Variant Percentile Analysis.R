# load packages

library(tidyverse)
library(ggplot2)
library(dplyr)

# Create a bar graph counting the number of specimens (Total is omitted)

ggplot(filter(variant_data, variant_name != "Total")) +
  geom_bar(mapping = aes(x = variant_name, y = specimens, fill = variant_name), 
           stat = "identity") +
  scale_x_discrete(guide = guide_axis(n.dodge=3)) +
  ggtitle("Specimen Count For Each Variant") +
  xlab("Variant") +
  ylab("Specimens")

# Base Plot for percentile

temppercentdata <- filter(variant_data, 
                          variant_name != "Total" & variant_name != "Other")

vstackplot1 <- ggplot(temppercentdata, aes(fill = variant_name, x = date, 
                                           y = specimens))

#> Stacked bar graph for percentiles for the first seven days
#> Variants "Other" and "Total" are omitted to remove ambiguity

vstackplot1 + 
  geom_bar(temppercentdata[temppercentdata$date <= "2021-01-07",], 
           mapping = aes(), position="fill", stat="identity") +
  scale_x_discrete(guide = guide_axis(n.dodge = 3)) +
  ggtitle("Variant Percentage For Week One") +
  ylab("Percentile")

# First month percentile

vstackplot1 + 
  geom_bar(temppercentdata[temppercentdata$date <= "2021-02-01",], 
           mapping = aes(), position="fill", stat="identity") +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Variant Percentage For Week One") +
  ylab("Percentile")

# 3 Month Percentile

vstackplot1 + 
  geom_bar(temppercentdata[temppercentdata$date <= "2021-04-01",], 
           mapping = aes(), position="fill", stat="identity") +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Variant Percentage For Week One") +
  ylab("Percentile")

# 6 Month Percentile

vstackplot1 + 
  geom_bar(temppercentdata[temppercentdata$date <= "2021-07-01",], 
           mapping = aes(), position="fill", stat="identity") +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Variant Percentage For Week One") +
  ylab("Percentile")

# 9 Month Percentile

vstackplot1 + 
  geom_bar(temppercentdata[temppercentdata$date <= "2021-10-01",], 
           mapping = aes(), position="fill", stat="identity") +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Variant Percentage For Week One") +
  ylab("Percentile")

# 12 Month Percentile

vstackplot1 + 
  geom_bar(temppercentdata[temppercentdata$date <= "2022-01-01",], 
           mapping = aes(), position="fill", stat="identity") +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Variant Percentage For Week One") +
  ylab("Percentile")

# Total Percentile (Approx 485 days)

vstackplot1 + 
  geom_bar(temppercentdata[temppercentdata$date <= "2022-07-01",], 
           mapping = aes(), position="fill", stat="identity") +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Variant Percentage For Week One") +
  ylab("Percentile")
