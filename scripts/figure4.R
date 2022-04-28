#aggregate data
years = aggregate(data1$num_of_years_onlist, by = list(data1$num_of_years_onlist), FUN = length)
years <- years %>%
  rename(years = Group.1, numbers = x) 

#graph the data set
ggplot(data=years, aes(x=years, y=numbers)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(x = "Number of years on the list",
       y = "Frequency",
       title = "Number of years on the list")
