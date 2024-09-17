FROM gitpod/workspace-full

# Install R
RUN sudo apt-get update && \
    sudo apt-get install -y r-base r-base-dev

# Install RStudio Server
RUN wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2022.02.0-443-amd64.deb && \
    sudo dpkg -i rstudio-server-2022.02.0-443-amd64.deb && \
    rm rstudio-server-2022.02.0-443-amd64.deb

# Install common R packages
RUN sudo R -e "install.packages(c('rmarkdown', 'knitr', 'tidyverse'), repos='http://cran.rstudio.com/')"
