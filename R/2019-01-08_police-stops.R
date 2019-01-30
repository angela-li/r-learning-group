1 + 1
x <- 1

data("mtcars")
mtcars

head(mtcars)
tail(mtcars)
View(mtcars)
summary(mtcars)
str(mtcars)
names(mtcars)

?names
# Challenge: do this for "iris" 

summary(iris)
str(iris)
dim(iris)

stops <- read.csv("01-JAN-2016 to 28-FEB-2017 - ISR - JUV Redacted.csv", stringsAsFactors = FALSE)
head(stops)
names(stops)

# Load the package!!!!
library(dplyr)

stops <- filter(stops, NAME != "REDACTED")
head(stops)

# Install packages
install.packages("readr")
install.packages("dplyr")

View(stops)
stops_by_race <- count(stops, RACE_CODE_CD)
stops_by_race_with_all <- add_tally(stops_by_race)
mutate(stops_by_race_with_all, pct = (n/nn)*100)

count(stops, RACE_CODE_CD) %>%
  add_tally() %>% 
  mutate(pct = (n/nn)*100) %>% 
  select(-nn)

# Ctrl-Enter to Run