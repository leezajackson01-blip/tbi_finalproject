# U.S. Traumatic Brain Injury Rates by Sex from 2001 to 2010

This data set shows the rates of traumatic brain injury related visits to the ED, 
hospitalizations, and deaths by sex in the U.S. from 2001 to 2010. This report 
will have descriptive statistics summarizing these rates by sex and by year, 
including overall trends and sex-based rate comparisons across the decade. 
To visualize these patterns, a line graph will be produced showing two lines 
by sex plotted over the years 2001 to 2010.

# Contents
- `tbi_rates.Rmd` – the final report 
- `data/raw_data.csv` – raw data that shows TBI rates by sex and year
- `code/` – R scripts that create the table and figure
- `output/` – resulting table (`table1.rds`) and figure (`figure1.png`)
- `Makefile` – detailed instructions on how to build

## table and figure code locations

- Table: `code/01_make_table.R`
- Figure: `code/02_make_figure.R`

#generating final report
run "make clean", then "make tbi_rates.html" in terminal