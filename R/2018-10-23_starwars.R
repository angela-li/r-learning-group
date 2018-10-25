library(dplyr)
library(magrittr)
library(ggplot2)

# run a line of your code: Ctrl-Enter
sample <- c(5, 6, 7)
sample[1]

starwars[1,]
starwars[, 1]

# variable assignment: make <- with Opt -
starwars_tbl <- starwars
View(starwars_tbl)
names(starwars_tbl)

# Just get Luke's info
filter(starwars_tbl, tolower(name) == "luke skywalker") %>% 
  select(hair_color)

# This is the same as above
luke <- filter(starwars_tbl, tolower(name) == "luke skywalker")
select(luke, hair_color)

# This is also the same as above
select(filter(starwars_tbl, tolower(name) == "luke skywalker"), hair_color)

# pipe: Cmd-Shift-M (Ctrl-Shift-M)
eye_color_counts <- starwars_tbl %>% 
  group_by(eye_color) %>% 
  tally() %>% 
  filter(n > 1, eye_color != "unknown")

colors <- eye_color_counts$eye_color

avg_height_tbl <- starwars_tbl %>% 
  filter(eye_color %in% colors, !is.na(height)) %>% 
  group_by(eye_color) %>% 
  summarize(avg_height = mean(height))

ggplot(avg_height_tbl, aes(x = eye_color, y = avg_height)) +
  geom_bar()

ggplot(starwars_tbl, aes(x = eye_color)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# to look up: how do you store metadata on units in R?