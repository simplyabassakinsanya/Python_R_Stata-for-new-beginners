Stata is excellent in statistics.
It is a composition of 2 words: STAT and A
The STAT is statistics and the A is analysis
Stata is a statistical software package used for:

- Data analysis

- Data management

- Statistical modeling

- Data visualization

- Econometrics and research

It is widely used in:

- Academia (Economics, Social Sciences, Public Health)

- Government institutions

- Financial and policy research organizations

- NGOs and development agencies

Unlike Python and R:

- Stata is menu-driven + command-driven

- Designed specifically for statistical analysis

- Less coding-heavy but highly structured
1. User-Friendly Interface
Point-and-click (GUI)
Command-line interface for automation

2. Powerful Statistical Tools
Regression (linear, logistic, panel)
Time series analysis
Hypothesis testing

3. Data Management Capabilities
Cleaning
Transformation
Merging datasets

4. Reproducibility
Uses Do-files (.do) similar to scripts in Python/R

5. Built-in Documentation
Excellent help system (help command)
When you open Stata, you see:

Main Components

Command Window
- Where you type commands
- Equivalent to Python terminal or R console

Results Window
- Displays output

Variables Window
- Shows all variables in dataset

Data Editor
- Spreadsheet-like view

Review Window
- History of commands

Do-file Editor
- Script editor for writing reusable code
Typical Workflow:

- Load data

- Explore data

- Clean data

- Analyze data

- Visualize data

- Save results

Variable Types

| Type    | Description | Example      |
| ------- | ----------- | ------------ |
| Numeric | Numbers     | age, income  |
| String  | Text        | name, gender |
| Date    | Time-based  | 2024-01-01   |

# STATA DATA MANAGEMENT MASTER SCRIPT (DETAILED EXPLANATION)

This notebook provides a **comprehensive, line-by-line explanation** of a Stata data management workflow.

Dataset being used: `stata_teaching_dataset`
---
## Overview
This script covers:
- Data Structure
- Data Import
- Data Cleaning
- Missing Values
- Recoding
- Variable Creation
- Labeling
- Exporting

---
## 1. INITIAL SETUP

```stata
clear all
set more off
```

### Explanation:
- `clear all`: Removes all data and variables currently in memory
- `set more off`: Prevents Stata from pausing output

---
**clear all**

What it does:

Removes:

- All datasets

- All variables

- Stored results

Why it matters:

- Prevents conflicts from previous work

Real-world analogy:

- Like clearing your workspace before starting a new project
**set more off**

What it does:

Stops Stata from pausing output with:

--more--

Why it matters:

Ensures scripts run without interruption

**In short, `set more off` is a command in Stata which will run everything continuously without stopping.**

It is always very useful running long scripts or large outputs.

---
## 2. SET WORKING DIRECTORY

```stata
cd "C:\\Users\\user\\Desktop\\My Datasets\\Clean Dashboard Data"
```

### Explanation:

What it does:

Sets the default folder for:

- Reading files

- Saving outputs

Why it matters:

Without this, you must write:

`import excel "C:\Users\user\Desktop\My Datasets\Clean Dashboard Data\file.xlsx"`

With it:

`import excel "file.xlsx"` (Cleaner & professional)

---
## 3. IMPORT DATA

```stata
import excel "stata_teaching_dataset.xlsx", firstrow clear
```

### Explanation:
- Imports Excel file into Stata


Breakdown:

`import excel`

- Command to load Excel data

`"stata_teaching_dataset.xlsx"`

- File name

`firstrow`

- Uses first row as: column names

`clear`

- Replaces existing dataset in memory

NOTE : If you remove firstrow:

You’ll get:

`A B C D`

**instead of real variable names**

---
## 4. DATA STRUCTURE

```stata
describe
list in 1/10
count
codebook
```

`describe`

Shows:

- Variable names

- Types (int, float, str)

- Labels

NOTE: First command every analyst should run

`list in 1/10`

Shows:

- First 10 rows of data

Helps verify:

- Data loaded correctly

- No strange values

`count`

Shows:

- Number of observations (rows)

`codebook`

Shows:

- Unique values

- Missing values

- Data distribution

NOTE: More detailed than describe

---
## 5. SORTING

```stata
sort Age
gsort -Revenue
```

`sort Age`

What it does:

- Arranges data from smallest → largest Age

`gsort -Revenue`

What it does:

- Sorts from highest → lowest Revenue

Key idea:

**- = descending**

---
## 6. FILTERING

```stata
list CustomerName Age if Age > 50
keep if Region == "West"
```
Conditional listing

`list CustomerName Age if Age > 50`

What it does:

- Shows only customers older than 50

`keep if Region == "West"`

What it does:

- Permanently removes all rows NOT in West

Important:

This is destructive

---
Re-importing

`import excel "stata_teaching_dataset.xlsx", firstrow clear`

Why:

- Restore original dataset

---
## 7. MISSING VALUES

```stata
misstable summarize
count if missing(Revenue)
replace Revenue = 0 if missing(Revenue)
drop if missing(Profit)
```

Check missing values

`misstable summarize`

Shows:

- Missing count per variable

Count missing in a variable

`count if missing(Revenue)`

Replace missing

`replace Revenue = 0 if missing(Revenue)`

Meaning:

- Fill missing revenue with 0

Drop missing

`drop if missing(Profit)`

Meaning:

- Remove rows with no profit

---
## 8. DATA CLEANING

```stata
duplicates report CustomerID
duplicates drop CustomerID, force
replace Region = "North" if Region == "north"
```

Check duplicates

`duplicates report CustomerID`

- Remove duplicates

`duplicates drop CustomerID, force`

- Fix text inconsistency

`replace Region = "North" if Region == "north"`

- Fixes case inconsistency

---
## 9. RECODING VARIABLES

```stata
recode Age (18/30 = 1 "Young") \
           (31/50 = 2 "Middle") \
           (51/65 = 3 "Senior"), gen(AgeGroup)
```

Age grouping

```
recode Age (18/30 = 1 "Young") ///
           (31/50 = 2 "Middle") ///
           (51/65 = 3 "Senior"), gen(AgeGroup)
```
Breakdown:

- 18/30 → range
- = 1 "Young" → assign value + label

`gen(AgeGroup)` → create new variable

---
## 10. NEW VARIABLES

```stata
gen profit_margin = Profit / Revenue
egen avg_revenue = mean(Revenue)
gen high_value = Revenue > 3000
```

**gen**

`gen profit_margin = Profit / Revenue`

- Row-by-row calculation

**egen**

`egen avg_revenue = mean(Revenue)`

- Dataset-level calculation

**Logical variable**

- gen high_value = Revenue > 3000

Creates:

- 1 = TRUE

- 0 = FALSE

---
## 11. LABELING

```stata
label variable Revenue "Total Revenue Generated"
```

`label variable Revenue "Total Revenue Generated"`

Why:

- Makes output readable

---
## 12. VALUE LABELING

```stata
label define gender_lbl 1 "Male" 2 "Female"
encode Gender, gen(gender_num)
label values gender_num gender_lbl
```

**Define labels**

`label define gender_lbl 1 "Male" 2 "Female"`

**Convert string → numeric**

`encode Gender, gen(gender_num)`

**Apply labels**

`label values gender_num gender_lbl`

---
## 13. EXPORT

```stata
save "cleaned_data.dta", replace
export excel using "cleaned_data.xlsx", replace
```

**Save as Stata file**

`save "cleaned_data.dta", replace`

**Export to Excel**

`export excel using "cleaned_data.xlsx", replace`

---

* 2. Import Data: You can basically use two methods in importing your data as shown below.

* Method 1

import excel "stata_teaching_dataset.xlsx", firstrow clear

describe 

* Method 2

import excel "C:\Users\abass\Documents\stata_teaching_dataset.xlsx", firstrow 

describe
