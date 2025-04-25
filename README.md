

⸻

Final Project: Data Analysis & Report Generation

Overview

This project generates a reproducible report using Docker to containerize the R environment. The report is created based on the analysis of random numbers using a set of R scripts. It demonstrates how to use renv for dependency management and how to build, run, and share your project using Docker.

⸻
Setup Instructions

Reproducibility

This project uses renv to manage R package dependencies. To install the required packages and restore the environment, run the following command in the terminal:

Rscript -e "renv::restore()"

This ensures that all necessary packages, specified in the renv.lock file, are installed.

⸻
 Docker Image

To build the Docker image for this project, run:

docker build -t amakamgboh/final-project .

Once the image is built, you can push it to DockerHub by running:

docker push amakamgboh/final-project

This will make the image available for others to pull from DockerHub.

⸻

Code Overview

code/01_make_output1.R
	•	Generates 100 random numbers.
	•	Saves the numbers as a .rds object in the output1/ folder.

code/02_make_output2.R
	•	Reads the random numbers saved by code/01_make_output1.R.
	•	Adds the random numbers from the first file to a new set of random numbers.
	•	Saves the sum as a .rds object in the output2/ folder.

code/03_make_output3.R
	•	Reads the random numbers saved by code/02_make_output2.R.
	•	Adds the random numbers from the second file to a new set of random numbers.
	•	Saves the sum as a .rds object in the output3/ folder.

report.Rmd
	•	Loads the .rds files created by the three R scripts (01_make_output1.R, 02_make_output2.R, 03_make_output3.R).
	•	Creates a histogram for each set of numbers and includes them in the final report.


```bash
docker build -t amakamgboh/final-project .
```
⸻

Run Report Generator

After building the Docker image, you can generate the HTML report by running the following command:

make run

This command does the following:
	1.	Installs dependencies by running renv::restore().
	2.	Generates the report as final_report.html in the report/ directory.

Once complete, the generated report will be available in the report/ folder.

⸻

 Notes:

Docker Run

The make run command mounts the report/ directory inside the Docker container and runs the report generation. This ensures that the generated report is saved to your local machine.

File Path Syntax
	•	macOS and Linux: The file paths will work as expected.
	•	Windows: When using Git Bash or similar, ensure file paths have an extra / at the start when mounting directories.

Pull Docker Image

If you need to pull the image from DockerHub, you can use the following command:

docker pull amakamgboh/final-project
 https://hub.docker.com/r/amakamgboh/final-project

The project can be run using the Docker image:

```bash
docker pull amakamgboh/final-project
docker run --rm -v $(pwd):/home/project amakamgboh/final-project
```


⸻

 Files in This Project:
	•	Makefile: Contains rules for installing dependencies, generating data, and rendering the report.
	•	code/: Contains the R scripts for generating random numbers and processing them.
	•	report.Rmd: The RMarkdown file for generating the final HTML report.
	•	renv.lock: Lock file for managing package dependencies using renv.
	•	README.md: This file, describing the project and instructions for building and running the Docker image.

⸻
