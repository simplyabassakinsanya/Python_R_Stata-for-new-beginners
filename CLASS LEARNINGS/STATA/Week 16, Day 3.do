cd "C:\Users\abass\Documents"

import excel "stata_teaching_dataset.xlsx", firstrow clear

describe

* 13. Descriptive Analytics

* a. Getting the summary statistics

summarize Age Revenue Profit

* Advanced Statistics: This helps us to understand distribution, not just averages

summarize Age Revenue, detail

* creating a frequency table for Region

tabulate Region

* Creating a frequency table for segment

tabulate Segment

* Focusing on a single variable

summarize Revenue

* Getting the range

display r(max) - r(min)

* 14. Visualization

* a. Bar Chart

* Comparing Revenue vs Profit across Region
graph bar Revenue Profit, over(Region)

* Revenue Comparison across product types

graph bar Revenue Profit, over(ProductCategory)

* Counts observation per region
graph bar (count) over(Region)

* b. Pie Chart

* Distribution of Regions
graph pie, over(Region)

* Percentage labels on slices.
graph pie, over(Segment) plabel(_all percent)

* Histogram: Shows the distribution of Revenue
histogram Revenue

* Adds normal distribution curve
histogram Revenue, normal

* d. Box Plot

* Showing the box plot distribution for Revenue
graph box Revenue

* Box plot chart comparing distribution across Region
graph box Revenue, over(Region)

* e. Scatter Plot

twoway (Scatter Profit Revenue) (lfit Profit Revenue)

* f. Line Graph

* Very important requirement before line plotting
sort CustomerID

* Showing trend of Revenue across IDs.
line Revenue CustomerID

* Two lines showing the trends on the same chart
line Revenue Profit CustomerID





