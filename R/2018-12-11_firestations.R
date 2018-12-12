# We went over some R basics, then made a leaflet map with fire station data

# Basics of R -------------------------------------------------------------

3 + 4
seq(1:100)

# Challenge: make a sequence of numbers that's 20 numbers long 
seq(1:20)

# Challenge #2: can you skip by 2?
by_two <- seq(1, 40, by = 2)
length(by_two)

# What do these functions actually do?
?seq
?c

sum(1, 2, 3)
mean(1:100)

a_number <- 1
a_name <- "Angela"

some_numbers <- c(1, 2, 4, 8, 10)
some_other_numbers <- c(5, 7, 100)
some_names <- c("Ry", "Tim", "Carlos", "Sandy", "Meredith", "Rafael", "Qili", "Angela")

class(some_numbers)
class(some_other_numbers)
class(some_names)

identical(class(some_numbers), class(some_other_numbers))

identical(20, 21)

20 == 20
20 == 21


# Work with Chicago fire station data -------------------------------------

# This is a one-time operation
install.packages("tidyverse")
install.packages("leaflet")
install.packages("sf")

# This is a every-script operation
library(tidyverse)
library(leaflet)
library(sf)

stations <- st_read("https://data.cityofchicago.org/resource/b4bk-rjxe.geojson")
stations_csv <- read_csv("https://data.cityofchicago.org/resource/b4bk-rjxe.csv")

View(stations)
nrow(stations)
ncol(stations)
dim(stations)
names(stations)
str(stations)

# MAKE A MAP
leaflet() %>%
  addProviderTiles(providers$CartoDB.Positron) %>% 
  addMarkers(data = stations, popup = ~name)


# Keyboard shortcuts ------------------------------------------------------
# Ctrl-Enter to run a line (or multiple highlighted lines) of code
# Alt - to produce "<-", or the "assignment operator"
# Ctrl-Shift-M to produce "%>%", or the "pipe"
