read.csv("Metadata.csv")
df <- read.csv("Metadata.csv")
which variable.names
library("ggplot2")
ggplot(data = df, aes(x = Timepoint, y = Conductivity))+
geom_point()
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle)) + geom_point(shape=21)
df$Reactor.cycle <- factor(df$Reactor.cycle)
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle)) + geom_point(shape=21)
ggplot(data = df, aes(x = Timepoint, y = conductivity, fill=Reactor.cycle)) + geom_point(shape=21, Size=4)
ggplot(data = df, aes(x = Timepoint, y = temp, fill=Reactor.cycle)) + geom_point(shape=21)
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle))
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle)) + geom_point(shape = 21, size = 4, alpha =.5)
p1 <- ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.phase)) + geom_point(shape=21, size = 4, alpha =.5)
p2 <- p1 + theme_bw() + geom_line()
p3 <- p2 + facet_grid (~Reactor.cycle)
df$Reactor.phase
levels (df$Reactor.phase)
p4 <- p2 + facet_grid (Reactor.phase~Reactor.cycle)
p4 
p4 + geom_line(aes(color = Reactor.phase))


ggplot(data = df, aes(x = Timepoint, y = Conductivity))+
  geom_point()
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle)) + geom_point(shape=21)
df$Reactor.cycle <- factor(df$Reactor.cycle)
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle)) + geom_point(shape=21)
ggplot(data = df, aes(x = Timepoint, y = conductivity, fill=Reactor.cycle)) + geom_point(shape=21, Size=4)
ggplot(data = df, aes(x = Timepoint, y = temp, fill=Reactor.cycle)) + geom_point(shape=21)
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle))
ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.cycle)) + geom_point(shape = 21, size = 4, alpha =.5)
p1 <- ggplot(data = df, aes(x = Timepoint, y = Conductivity, fill=Reactor.phase)) + geom_point(shape=21, size = 4, alpha =.5)
p2 <- p1 + theme_bw() + geom_line()
p3 <- p2 + facet_grid (~Reactor.cycle)
df$Reactor.phase
levels (df$Reactor.phase)
p4 <- p2 + facet_grid (Reactor.phase~Reactor.cycle)
p4 
p4 + geom_line(aes(color = Reactor.cycle))
p4

library(ggplot2)
library(dplyr)
mean(df[df$Reactor.phase == "Control", "ph"])
physiochemical <- df %>% select(ph,temp,Conductivity)
physiochemical.control <- df %>%
  mutate(Condratio=Diversity...D0/temp) %>%
  filter(Reactor.phase == "Control") %>%
diversity <- df %>%
  filter(Reactor.phase == "Startup") %>%
  select(contains("Diversity"))
meanph <- df %>% group_by(Reactor.phase) %>% summarise(mean.ph = mean(ph), mean.d2 = mean(Diversity...D2), sd.ph = sd(ph))
filter(Reactor.phase == "Startup") %>%
  select(contains("Diversity"))
reactorcycle2 <- df %>% group_by(Reactor.cycle2) %>% summarise(sd.Reactor.cycle2 = mean(log10(Cell.density..cells.mL.))
                                                               
                                                               physiochem <- df %>% select(ph,temp,Conductivity)                                                               
                                                               View(physiochem)
                                                              
diversity <- df %>% select(ph,temp,Diversity) 
meanph <- df %>%
  filter(Reactor.cycle == 2) %>% 
  group_by(Reactor.phase) %>%
  mutate(condratio=Conductivity/temp) %>% 
  summarise(mean.ph = mean(ph),
            mean.d2 = mean(Diversity...D2),
            sd.ph = sd(ph),
            sd.d2 = sd(Diversity...D2),
            avelog10.celldens = mean(log10(Cell.density..cells.mL.)),
            mean.condrat = mean(condratio))
                                            
physicochem <- df %>%
  select(sample_title,temp,Conductivity,ph)
diversity <- df %>%
  select(sample_title,temp,Conductivity,ph)
physicochem <- df %>%
  select(sample_title, temp, ph, Conductivity)

diversity <- df %>%
  select(sample_title,contains(("Diversity")))

# Merging data sets;  should have one common characteristic (KEY, eg; sample name)
# Check join: left_join, right_join

physicodiversity <- dplyr::full_join(physicochem, diversity, by= "sample_title")
p2 <- df %>% filter(Reactor.cycle==2) %>% 
  ggplot(aes(x = Timepoint,y = Cell.density..cells.mL., fill = Cell.density..cells.mL.)) +geom_point(shape = 21, size = 4)

p2 + scale_y_log10()
