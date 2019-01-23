?mtcars
data("mtcars")
mtcars

View(mtcars)
names(mtcars)
summary(mtcars)

install.packages("tidyverse")
install.packages("naniar")
library(tidyverse)
library(naniar)

# illinoistrafficstops.com -- scroll to bottom
stops <- read_csv("https://d4q93323g8cmn.cloudfront.net/data/2017_metrics.csv")

summary(stops)
glimpse(stops)
View(stops)
str(stops)
dim(stops)
names(stops)

drugs <- select(stops, contains("Contraband"), "DriverRace")
gg_miss_var(drugs)

not_drugs <- select(stops, -contains("Contraband"))