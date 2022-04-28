#aggregate data
yearfound = aggregate(data1$year_founded, by = list(data1$year_founded), FUN = length)
yearfound <- yearfound %>%
  rename(year = Group.1, numbers = x) 

#graph the data set
ggplot(data=yearfound, aes(x=year, y=numbers)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(x = "Year",
       y = "Frequency",
       title = "Year of the companies founded") +
  xlim(1869,2016)