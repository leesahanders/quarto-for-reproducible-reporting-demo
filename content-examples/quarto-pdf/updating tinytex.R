# Update the renv.lock file 
renv::snapshot()

# Update all packages in the environment
renv::update()

# Make sure tinytex is updated - we can also try following https://aakinshin.net/vignettes/tinytex-reinstall/ 
install.packages('tinytex')
tinytex::tlmgr_update()
tinytex::reinstall_tinytex()