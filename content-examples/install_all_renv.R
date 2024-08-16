# This script will walk through each sub project and install packages to the active library and also to the project library

library(renv)
library(dplyr)
library(stringr)

# Get a list of the paths to all renv.lock files
pattern <- "\\.lock$"
lock_path <- list.files(pattern = pattern, path = ".", full.names = TRUE, recursive = TRUE)

for(i in lock_path){
  #i="./content-examples/dashboard/renv.lock" # For testing
  dir_path <- str_remove(i, "renv.lock")
  projectlibrary=paste0(dir_path,"renv/library")
  
  print(paste0("Installing renv at ", i, " using ", paste0(options('repos'), sep=",")))
  
  print(paste0("Installing into active library for ", i))
  renv::restore(project=dir_path, lockfile=i, prompt=FALSE) # Install into default active library .libPaths() (when not running as an renv activated project)
  
  print(paste0("Installing into project library for ", i))
  renv::restore(project=dir_path, lockfile=i, library=projectlibrary, prompt=FALSE) # Install into default active library (when not running as an renv activated project)
}

# Note that one downside to this approach is that it will take the latest package version for what is globally installed

# WIP This part can be run interactively to update the packages in each renv and snapshot the result - this will get everything in sync!
interactive(){

# Update packages in the user library
renv::update(prompt=FALSE)
  
for(i in lock_path){
  i="./content-examples/dashboard/renv.lock" # For testing
  dir_path <- str_remove(i, "renv.lock")
  projectlibrary=paste0(dir_path,"renv/library")

  print(paste0("Updating renv at ", i, " using ", paste0(options('repos'), sep=",")))
  
  # Update packages and lock file 
  renv::update(project=dir_path,library=projectlibrary, lockfile=TRUE, prompt=FALSE)
  
  #print(paste0("Installing into active library for ", i))
  #renv::restore(project=dir_path, lockfile=i, prompt=FALSE) # Install into default active library .libPaths() (when not running as an renv activated project)
  
  #print(paste0("Installing into project library for ", i))
  #renv::restore(project=dir_path, lockfile=i, library=projectlibrary, prompt=FALSE) # Install into default active library (when not running as an renv activated project)
}
}



# For troubleshooting: See all packages in each library
# lapply(.libPaths(), list.files)
# libraries = paste0(str_remove(lock_path, "renv.lock"),"renv/library")
# lapply(c(.libPaths(),libraries), list.files)

# Similar work in the evals env: https://github.com/rstudio/evaluations/blob/main/src/resources/r_packages.txt 


