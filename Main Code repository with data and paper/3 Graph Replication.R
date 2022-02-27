# Loading in datasets

birth = read_csv("Inputs/Data/fig_1.csv")
race = read_csv("Inputs/Data/figs_2a_2b.csv")
write_csv(birth, "Replication-Birth Rates/birth.csv")
write_csv(race, "Replication-Birth Rates/race.csv")

# Replication of Figure 1
birth %>%
  ggplot(data=., aes(x=year, y=brate_all))+
  geom_line(color="blue")+
  theme_classic()+
  geom_vline(xintercept = 2007, linetype="dashed", color = "black", size=0.3) + 
  ylim(50,80) +
  ylab("Births per 1,000 women age 15–44")+
  xlab("") +
  annotate(geom="text", x=2009, y=72, label="2007",
           color="black")

# Replication of Figure 2A
race %>%
  select(-brate_whitenh, -brate_blacknh, -brate_hisp) %>%
  pivot_longer(cols = c("brate_1519", "brate_2024", "brate_2529", "brate_3034", "brate_3539", "brate_4044"),
               names_to = "group",
               values_to = "value"
  ) %>%
  ggplot(mapping = aes(x = year, y = value, color = group)) +
  geom_line() +
  theme_classic() +
  scale_x_continuous(breaks = seq(1980,2020,by = 5))+
  scale_y_continuous(breaks = seq(0,140,by = 20))+
  labs(x = " ",
       y = "Births per 1,000 women in relevant population subgroup",
       color = " ") +
  geom_vline(xintercept = 2007, linetype="dashed", color = "black", size=0.3) +
  scale_color_brewer(palette = "Set1", labels = c("Age 15-19", "Age 20-24","Age 25-29","Age 30-34","Age 35-39", "Age 40-44")) +
  theme(legend.position = "bottom") +
  annotate(geom="text", x=2009, y=120, label="2007",
           color="black")


# Replication of Figure 2B

race %>%
  filter(year >= 1990)%>%
  select(year, brate_whitenh, brate_blacknh, brate_hisp) %>%
  pivot_longer(cols = c("brate_whitenh", "brate_blacknh", "brate_hisp"),
               names_to = "racegroup",
               values_to = "value"
  ) %>%
  ggplot(mapping = aes(x = year, y = value, color = racegroup)) +
  geom_line() +
  theme_classic() +
  scale_x_continuous(breaks = seq(1990,2020,by = 5))+
  ylim(0,120)+
  labs(x = " ",
       y = "Births per 1,000 women in relevant population subgroup",
       color = " ") + 
  geom_vline(xintercept = 2007, linetype="dashed", color = "black", size=0.3) +
  scale_color_brewer(palette = "Set1", labels = c("Black, non-Hispanic", "Hispanic", " White, non-Hispanic")) +
  theme(legend.position = "bottom") +
  annotate(geom="text", x=2009, y=110, label="2007",
           color="black")
  
