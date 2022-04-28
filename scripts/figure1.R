# aggregate data
statetable = aggregate(data1$state, by = list(data1$state), FUN = length)
statetable <- statetable %>%
  rename(state = Group.1, numbers = x) 

#graph the dataset 
ggplot(data=statetable, aes(x=state, y=numbers)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=1)) +
  labs(x = "State",
       y = "Frequency",
       title = "Distribution of the state of the companies")
