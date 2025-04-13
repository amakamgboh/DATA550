
install:
	Rscript -e "renv::restore()"
	
all: output/final_report.html

install:
	Rscript -e "if (!requireNamespace('renv', quietly = TRUE)) install.packages('renv'); renv::restore(prompt = FALSE)"

output/cleaned_data.rds: code/Clean.R
	Rscript code/Clean.R

output/table_data.rds: code/Table.R output/cleaned_data.rds
	Rscript code/Table.R

output/viz_data.rds: code/Viz.R output/table_data.rds output/cleaned_data.rds
	Rscript code/Viz.R

output/final_report.html: FINAL_PROJECT_Amaka.Rmd output/cleaned_data.rds output/table_data.rds output/viz_data.rds
	Rscript -e "rmarkdown::render('FINAL_PROJECT_Amaka.Rmd')"

clean:
	rm -f output/*.rds output/final_report.html

run: install all



