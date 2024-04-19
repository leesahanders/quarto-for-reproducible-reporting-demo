# Quarto-for-reproducible-reporting-demo 

> **Warning**
> This is part of a repository that is prone to  Changes and overhauls will happen without notice, but feel free to reach out with any questions/corrections/or help needs at lisamaeanders@gmail.com

**Access the presentation slides at: <>**



## Resources 

- Posit-webinar-series: <https://github.com/jeremy-allen/posit-webinar-series> 
- Quarto workshop: <https://github.com/jeremy-allen/quarto-workshop> 
- Quarto demo: <https://github.com/jeremy-allen/quarto-demo> 
- Quarto listings report: <https://github.com/jeremy-allen/quarto-listings-report> 
- Diagrams in Quarto: <https://github.com/jeremy-allen/diagrams-in-quarto> 
- Quarto manuscripts: <https://github.com/jeremy-allen/quarto-manuscripts> 
- Public sector cheat sheet: <https://github.com/rstudio/Posit-Public-Sector-Cheatsheet> 
- renv example from the VA Dept. Environmental Quality: <https://github.com/JosiahParry/renv-example>
Scripts in projects: <https://quarto.org/docs/computations/render-scripts.html#scripts-in-projects> 
- Reproduceable presentations in quarto: <https://info5940.infosci.cornell.edu/slides/publishing-reproducible-documents/#/title-slide> 
- Quarto awesome list: <https://github.com/mcanouil/awesome-quarto> 
- Quarto the definitive guide: <https://quarto-tdg.org/presentations> 
- R without statistics, reproduceable reporting with quarto: <https://book.rwithoutstatistics.com/quarto-chapter> 
- Quarto tip a day: <https://mine-cetinkaya-rundel.github.io/quarto-tip-a-day/posts/17-dark-mode/> 
- Quarto callouts: <https://www.andreashandel.com/posts/2023-06-13-custom-callouts-quarto/> 
- Thomas Mock's presentation to Austin Python meetup in 2024: <https://thomasmock.quarto.pub/python-austin/#/> 

Websites: 

- Building a quarto website: <https://ucsb-meds.github.io/creating-quarto-websites/> 

## Structure 

- "Link! Take this"
- "These are a few of my favorite things"
- razzle and dazzle
- what is reproduceable data science? 
- what is quarto? 
- let's explore the top 2 content types that interests the audience
- where to go from here
- leave on a cheat sheet (renv, quarto, version control, content types)

- formatting basics 
- essentials of extensions (lightbox)
- snapshotting data? 
- parameterization 
- languages 
- including code 



# Publishing

Notes for the developer:

This presentation is published to the RStudio demo server using push button publishing from the RStudio IDE.

It is also published to my quarto pub space. I run quarto publish quarto-pub from terminal after `cd`-ing in to the directory. Answer "Y" to overwrite my previous site and to use the correct account. For example, to publish this slide deck I'm running: `quarto publish quarto-pub 2024-git-demo.qmd`. It will need to be a quarto project. If you have an existing directory of documents that you want to treat as a project just invoke `quarto create-project` with no arguments from within the directory.

Preview with: `quarto preview quarto-for-reproducible-reporting-demo.qmd --to positslides-revealjs --no-watch-inputs --no-browse`

I can access my account and see my deployments at https://questionable.quarto.pub/.
