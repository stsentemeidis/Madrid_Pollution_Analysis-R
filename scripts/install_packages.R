
### THIS SCRIPT CHECK IF NECESSARY PACKAGES ARE INSTALLED AND LOADED

packages_list <- c('readxl',
                   'tidyr',
                   'ggplot2',
                   'corrplot',
                   'GGally',
                   'gridExtra',
                   'leaflet',
                   'jtools',
                   'lattice',
                   'car',
                   'caret',
                   'MASS')

for (i in packages_list){
  if(!i%in%installed.packages()){
    install.packages(i, dependencies = TRUE)
    library(i, character.only = TRUE)
    print(paste0(i, ' has been installed'))
  } else {
    print(paste0(i, ' is already installed'))
    library(i, character.only = TRUE)
  }
}

print(paste0('[', round(difftime(Sys.time(),start_time, units = 'secs'),1), 's]: ',
             'All necessary packages installed and loaded'))

