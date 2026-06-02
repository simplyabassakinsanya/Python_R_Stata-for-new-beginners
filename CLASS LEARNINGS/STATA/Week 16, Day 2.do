cd "C:\Users\abass\Documents"

import excel "stata_teaching_dataset.xlsx", firstrow clear

describe

list in 1/10

count

codebook

* 7. Sorting of Data (Sorting by Age)

sort Age

list Age in 1/10

* Sorting by Revenue (This shows the top 10 highest revenues)

gsort -Revenue 
list Revenue in 1/10
browse

* 9. Show multiple columns

gsort - Revenue
list CustomerName Age Revenue in 1/10

*10. Filtering Data

* a. View customers above 50 years

list CustomerName Age if Age > 50
browse if Age > 50
count if Age > 50

* I want it to show and still be in the memory

preserve
keep if Age > 50
count
browse

* To restore to the original dataset

restore
display "Full Dataset Restored"
browse
count

* b. Keep only customers from West region.
keep if Region == "West"
display "Customer in West Region"
browse 
count

* Restore full dataset (re-import)
import excel "stata_teaching_dataset.xlsx", firstrow clear

describe
count
browse

* 11. Checking for duplicates and fixing inconsistencies in the data.

* check duplicates

duplicates report CustomerID

* remove duplicates

duplicates drop CustomerID, force

* Fix inconsistent text

replace Region = "North" if Region == "north"

* 12. Recoding Variables 

* Recode Age into groups.

recode Age (18/30 = 1 "Young") ///
(31/50 = 2 "Middle") ///
(51/65 = 3 "Senior"), gen (AgeGroup)
