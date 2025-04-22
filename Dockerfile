FROM rocker/tidyverse:latest

# Set working directory
WORKDIR /home/project

# Copy necessary files
COPY . .

# Install system dependencies (in case any are needed)
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    pandoc

# Install R packages via renv
RUN Rscript -e "install.packages('renv'); renv::restore()"

# Render the HTML report
CMD ["Rscript", "-e", "rmarkdown::render('FINAL_PROJECT_Amaka.Rmd', output_dir = 'report')"]