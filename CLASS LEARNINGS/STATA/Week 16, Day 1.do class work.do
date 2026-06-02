* We are working with the data set titles "stata_teaching_data.

*** Clear All *** removes all datasets, all variables, stored results, to prevent conflicts from previous work. It is like clearing your workplace before starting a new project.
*** Set more off *** With this, you want to ensure that your script run without interuption and therefore stops Stata from pausing output. This is usually useful if you are working with a very large data sets

clear all
set more off 

* set more off * is a command in Stata which will run everything continuosuly without stopping. ** It is always very useful running long scripts or large outputs. **

* 1. Setting Working Directory 

cd "C:\Users\abass\Documents"
* You must put inverted coma to confirm it is a folder

import excel "stata_teaching_dataset.xlsx", firstrow clear

describe 

* 2. Import Data: 

* import excel "C:\Users\abass\Documents\stata_teaching_dataset.xlsx", firstrow 

* describe

* 4. View first few rows

list in 1/10

* 5. Number of observations and variables

count

* 6. Check detailed variable information.

codebook
