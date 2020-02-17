FROM rocker/rstudio

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
   zlib1g-dev \
   libxml2-dev

RUN r -e 'install.packages("ggplot2")'
RUN r -e 'install.packages("devtools")'
RUN r -e 'install.packages("pryr")'
RUN r -e 'install.packages("tidyverse")'
RUN r -e 'install.packages("hexbin")'

RUN r -e 'install.packages(c("nycflights13", "gapminder", "Lahman"))'
