# load packages

library(tidyverse)
library(ggplot2)

tempbpdata <- filter(variant_data, variant_name == "Alpha" 
                     | variant_name == "Delta" 
                     | variant_name == "Omicron")

variantboxplot <- ggplot(tempbpdata, aes(x = variant_name, y = specimens, 
                             fill = variant_name))

# Box Plot for variant specimen distribution for month one

variantboxplot + 
  geom_boxplot(tempbpdata[tempbpdata$date <= "2021-02-01",], mapping = aes()) +
  ggtitle("Variant Specimen Distribution: One Month") +
  xlab("Variant Name") +
  scale_x_discrete(guide = guide_axis(n.dodge = 3))

# Three month variant specimen distribution

variantboxplot + 
  geom_boxplot(tempbpdata[tempbpdata$date <= "2021-04-01",], mapping = aes()) +
  ggtitle("Variant Specimen Distribution: Three Months") +
  xlab("Variant Name") +
  scale_x_discrete(guide = guide_axis(n.dodge = 3))

# Six Month Variant Specimen Distribution

variantboxplot + 
  geom_boxplot(tempbpdata[tempbpdata$date <= "2021-07-01",], mapping = aes()) +
  ggtitle("Variant Specimen Distribution: Six Months") +
  xlab("Variant Name") +
  scale_x_discrete(guide = guide_axis(n.dodge = 3))

# Nine Month Variant Specimen Distribution

variantboxplot + 
  geom_boxplot(tempbpdata[tempbpdata$date <= "2021-10-01",], mapping = aes()) +
  ggtitle("Variant Specimen Distribution: Nine Months") +
  xlab("Variant Name") +
  scale_x_discrete(guide = guide_axis(n.dodge = 3))

# 12 Month Variant Specimen Distribution

variantboxplot + 
  geom_boxplot(tempbpdata[tempbpdata$date <= "2022-01-01",], mapping = aes()) +
  ggtitle("Variant Specimen Distribution: Twelve Months") +
  xlab("Variant Name") +
  scale_x_discrete(guide = guide_axis(n.dodge = 3))
