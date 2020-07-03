FROM jupyter/r-notebook:latest

RUN R -e "install.packages('BiocManager', repos = 'https://www.stats.bris.ac.uk/R/')"
RUN R -e "BiocManager::install('PADOG')"
RUN R -e "BiocManager::install('BLMA')"
RUN R -e "BiocManager::install('multiHiCcompare')"
