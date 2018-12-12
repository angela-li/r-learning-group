
R Learning Group at Chi Hack Night
==================================

This repository contains all scripts written during [Chi Hack Night](https://chihacknight.org) in the [R Learning Group](https://github.com/chihacknight/breakout-groups/issues/173). We meet on **Tuesday nights at Merchandise Mart**, and I encourage you to come to a session! (There are great weekly speakers, but the breakout groups start around 7:30pm if you want to strategically time your arrival.) In any case, you can register for Chi Hack Night [here](https://www.eventbrite.com/e/chi-hack-night-registration-41703945624).

This group is currently organized by Angela Li, R Spatial Advocate at the [Center for Spatial Data Science](https://spatial.uchicago.edu) at UChicago. I also founded [R-Ladies Chicago](https://rladieschicago.org) and love R!

Structure
---------

In general, we start with a dataset found on the [Chicago Data Portal](https://data.cityofchicago.org/). We then import, manipulate, and visualize it using R. The focus is often on using the [`tidyverse`](https://www.tidyverse.org/) to teach a quick data workflow. Learn more about this suite of packages in the free [R for Data Science](https://r4ds.had.co.nz/) book.

Contents
--------

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Date</th>
<th>What we did</th>
<th>R Script</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>2018-10-23</td>
<td>Walked through the <code>starwars</code> dataset in <code>dplyr</code>, familiarized ourselves with RStudio and R, did some data manipulation, and made one or two plots in <code>ggplot2</code></td>
<td><a href="https://github.com/angela-li/r-learning-group/blob/master/R/2018-10-23_starwars.R">2018-10-23_starwars.R</a></td>
</tr>
<tr class="even">
<td>2018-10-30</td>
<td>Import <a href="https://data.cityofchicago.org/Community-Economic-Development/Affordable-Rental-Housing-Developments/s6ha-ppgi">affordable housing data</a> (csv downloaded from Chicago Data Portal), do some basic data manipulation with <code>dplyr</code>, make a map with <code>leaflet</code></td>
<td><a href="https://github.com/angela-li/r-learning-group/blob/master/R/2018-10-30_housing.R">2018-10-30_housing.R</a></td>
</tr>
<tr class="odd">
<td>2018-12-04</td>
<td>Import <a href="https://data.cityofchicago.org/Administration-Finance/Current-Employee-Names-Salaries-and-Position-Title/xzkq-xp2w">Chicago public salary data</a> with <code>RSocrata</code>, look at top salaries (in aggregate and by department) with <code>dplyr</code>, make a histogram of median salaries by department with <code>ggplot2</code></td>
<td><a href="https://github.com/angela-li/r-learning-group/blob/master/R/2018-12-04_salaries.R">2018-12-04_salaries.R</a></td>
</tr>
<tr class="even">
<td>2018-12-11</td>
<td>Import Chicago <a href="https://data.cityofchicago.org/Administration-Finance/Current-Employee-Names-Salaries-and-Position-Title/xzkq-xp2w">fire station location data</a> as a GeoJSON with <code>sf</code> and make a <code>leaflet</code> map with it</td>
<td><a href="https://github.com/angela-li/r-learning-group/blob/master/R/2018-12-11_firestations.R">2018-12-11_firestations.R</a></td>
</tr>
</tbody>
</table>

Resources
---------

-   [Introductory slides for sessions](https://docs.google.com/presentation/d/1qEyoOjJx1elaftrCnckWGMjFZ7xZaGP4fsQeAp9Zp5c/edit#slide=id.g4632030f2f_0_0)
-   [R for Data Science](https://spatial.uchicago.edu)
-   [RStudio Cloud](https://rstudio.cloud)

Contact Me
----------

Have questions about R? Submit an issue in this repository or send me an email at <ali6@uchicago.edu>. Or reach out via Twitter @[CivicAngela](https://twitter.com/CivicAngela).
