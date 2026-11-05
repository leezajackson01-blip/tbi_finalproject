tbi_rates.html: tbi_rates.Rmd output/table1.png output/figure1.png
	Rscript -e "rmarkdown::render('tbi_rates.Rmd')"

output/table1.png: code/01_make_table.R data/raw_data.csv
	Rscript code/01_make_table.R

output/figure1.png: code/02_make_figure.R data/raw_data.csv
	Rscript code/02_make_figure.R

.PHONY: clean
clean:
	rm -f output/* tbi_rates.html