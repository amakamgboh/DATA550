# Code Description
## Reproducibility

This project uses [`renv`](https://rstudio.github.io/renv/) to manage package dependencies.

To install the required packages and reproduce the environment, run the following command in the terminal:

```bash
make install

`code/01_make_output1.R`
- generates 100 random numbers
- saves numbers as a `.rds` object in `output1/` folder

`code/02_make_output2.R`
- reads random numbers saved by `code/01_make_output1.R`
- adds the random numbers saved by `code/01_make_output1.R` to a new set of random numbers
- saves the sum of the two as a `.rds` object in `output2/` folder

`code/03_make_output3.R`
- reads random numbers saved by `code/02_make_output2.R`
- adds the random numbers saved by `code/02_make_output2.R` to a new set of random numbers
- saves the sum of the two as a `.rds` object in `output3/` folder

`report.Rmd`
- loads each set of random numbers saved by the three `.R` scripts
- makes a histogram of each