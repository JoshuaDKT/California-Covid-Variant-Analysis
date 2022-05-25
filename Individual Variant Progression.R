# load packages

library(tidyverse)
library(ggplot2)
library(dplyr)

# Base ggplot for specimen count progression for each variant

vpplot <- ggplot(variant_data, mapping = aes(x = date, y = specimens, group = 1))

# Alpha Variant

vpplot + 
  geom_line(filter(variant_data, variant_name == "Alpha"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Alpha Variant Progression")

# Beta Variant

vpplot + 
  geom_line(filter(variant_data, variant_name == "Beta"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Beta Variant Progression")

# Delta Variant Progression

vpplot + 
  geom_line(filter(variant_data, variant_name == "Delta"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Delta Variant Progression")

# Epsilon Variant Progression

vpplot + 
  geom_line(filter(variant_data, variant_name == "Epsilon"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Epsilon Variant Progression")

# Gamma Variant Progression

vpplot + 
  geom_line(filter(variant_data, variant_name == "Gamma"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Gamma Variant Progression")

# Lambda Variant Progression

vpplot + 
  geom_line(filter(variant_data, variant_name == "Lambda"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Lambda Variant Progression")

# Mu Variant Progression

vpplot + 
  geom_line(filter(variant_data, variant_name == "Mu"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Mu Variant Progression")

# Omicron Variant Progression

vpplot + 
  geom_line(filter(variant_data, variant_name == "Omicron"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Omicron Variant Progression")

# Other Variant Progression

vpplot + 
  geom_line(filter(variant_data, variant_name == "Other"), mapping = aes()) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Other Variant Progression")

