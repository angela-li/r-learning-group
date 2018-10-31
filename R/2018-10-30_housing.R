plot(mtcars)
x <- 1
y <- c(1, 2, 3)

# install.packages("readr")
library(readr)
library(dplyr)
library(ggplot2)
library(leaflet)

housing <- read_csv("Affordable_Rental_Housing_Developments.csv")
View(housing)
names(housing)

filter(housing, `Community Area Name` %in% c("Jefferson Park", "Rogers Park"))
properties_over_100 <- filter(housing, Units >= 100)

arrange(properties_over_100, desc(Units)) %>% 
  View()

top_housing <- housing %>% 
  group_by(`Community Area Name`) %>% 
  arrange(desc(Units)) %>% 
  slice(1:3)

top_housing %>% 
  group_by(`Community Area Name`) %>% 
  summarize(mean(Units))

ggplot(housing, aes(x = Units)) +
  geom_histogram()

leaflet() %>% 
  addTiles() %>%
  addCircleMarkers(lng = housing$Longitude, lat = housing$Latitude, radius = 0.1)


# Ctrl-Shift-M for %>%
# Ctrl-Enter to run a line of code

?dplyr
?leaflet
