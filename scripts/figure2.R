#aggregate data
industry = aggregate(data1$industry, by = list(data1$industry), FUN = length)
industry <- industry %>%
  rename(industry = Group.1, numbers = x) 

#graph the data set
ggplot(data=industry, aes(x=industry, y=numbers)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 90, hjust=1)) +
  labs(y = "Frequency",
       title = "Industry distribution of the companies")
