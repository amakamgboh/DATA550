# Data Visualization
df <- read_excel("~/Downloads/Georgia_DPH_PUBLIC_Vaccination_Public_Data_in_Excel.xlsx", 
                 sheet = "COUNTY_SUMMARY")
ggplot(df, aes(x = reorder(COUNTY_NAME, -PERSONCVAX), y = PERSONCVAX)) +
  geom_bar(stat = "identity", fill = "blue") +
  coord_flip() +
  labs(title = "COVID-19 Vaccination Rates by County in Georgia",
       x = "County",
       y = "Vaccination Rate (%)") +
  theme_minimal()