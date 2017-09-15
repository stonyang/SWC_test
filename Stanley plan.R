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
filter(Reactor.phase == "Control") %>%
diversity <- df %>%
  filter(Reactor.phase == "Startup") %>%
  select(contains("Diversity"))