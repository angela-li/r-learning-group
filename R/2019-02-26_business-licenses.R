library(readr)
library(sf)
library(janitor)
library(leaflet)

business <- read_csv("Business_Licenses_-_Current_Active.csv")
str(business)
View(business)
business_clean <- clean_names(business) %>%
  filter(!is.na(latitude), !is.na(longitude))

business_sf <- st_as_sf(business_clean, coords = c("longitude", "latitude"))

sample <- head(business_sf)

leaflet(data = sample) %>%
  addTiles() %>%
  addMarkers(popup = ~`legal_name`)