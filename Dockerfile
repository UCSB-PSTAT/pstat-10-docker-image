FROM dddlab/base-rstudio:v20200305-b499b35-94fdd01b492f
 
LABEL maintainer="Patrick Windmiller <windmiller@pstat.ucsb.edu>"

USER $NB_USER

RUN R -e "install.packages(c('biglm', 'RSQLite', 'statip', 'sqldf'), repos = 'http://cran.us.r-project.org')"
