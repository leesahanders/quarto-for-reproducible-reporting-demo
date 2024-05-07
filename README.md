# Quarto-for-reproducible-reporting-demo 

> **Warning**
> This is part of a repository that is prone to  Changes and overhauls will happen without notice, but feel free to reach out with any questions/corrections/or help needs at lisamaeanders@gmail.com

**Access the presentation slides at: <>**

**Access the deployed content at: <>**

## Resources 

- Posit-webinar-series: <https://github.com/jeremy-allen/posit-webinar-series> 
- Quarto workshop: <https://github.com/jeremy-allen/quarto-workshop> 
- Quarto demo: <https://github.com/jeremy-allen/quarto-demo> 
- Quarto listings report: <https://github.com/jeremy-allen/quarto-listings-report> 
- Diagrams in Quarto: <https://github.com/jeremy-allen/diagrams-in-quarto> 
- Quarto manuscripts: <https://github.com/jeremy-allen/quarto-manuscripts> 
- Public sector cheat sheet: <https://github.com/rstudio/Posit-Public-Sector-Cheatsheet> 
- renv example from the VA Dept. Environmental Quality: <https://github.com/JosiahParry/renv-example>
- Scripts in projects: <https://quarto.org/docs/computations/render-scripts.html#scripts-in-projects> 
- Reproduceable presentations in quarto: <https://info5940.infosci.cornell.edu/slides/publishing-reproducible-documents/#/title-slide> 
- Quarto awesome list: <https://github.com/mcanouil/awesome-quarto> 
- Quarto the definitive guide: <https://quarto-tdg.org/presentations> 
- R without statistics, reproduceable reporting with quarto: <https://book.rwithoutstatistics.com/quarto-chapter> 
- Quarto tip a day: <https://mine-cetinkaya-rundel.github.io/quarto-tip-a-day/posts/17-dark-mode/> 
- Quarto callouts: <https://www.andreashandel.com/posts/2023-06-13-custom-callouts-quarto/> 
- Thomas Mock's presentation to Austin Python meetup in 2024: <https://thomasmock.quarto.pub/python-austin/#/> 
- [Parameterized Reports with Quarto: R-Ladies DC Workshop](https://jadeyryan.com/talks/2024-01-18_rladies-dc_quarto-params/)
- [Extending quarto](https://www.youtube.com/watch?v=EihuM4oyOvs)
- [Quarto job scheduling](https://github.com/ryjohnson09/quarto-job-scheduling?tab=readme-ov-file) 
- [Some Quarto Tips for Academic Presentation](https://kazuyanagimoto.com/blog/2022/12/27/quarto_tips/)
- [Posit blog, building a reporting infrastructure with quarto](https://posit.co/blog/building-a-reporting-infrastructure-with-quarto/) 

From Posit conf: 

- ["Reproducible Manuscripts with Quarto" talk at posit::conf(2023)](https://github.com/mine-cetinkaya-rundel/quarto-manuscripts)

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

workshop outline: https://github.com/jeremy-allen/quarto-workshop/blob/main/workshop-guide

# Publishing

Notes for the developer:

This presentation is published to the RStudio demo server using push button publishing from the RStudio IDE.

It is also published to my quarto pub space. I run quarto publish quarto-pub from terminal after `cd`-ing in to the directory. Answer "Y" to overwrite my previous site and to use the correct account. For example, to publish this slide deck I'm running: `quarto publish quarto-pub 2024-git-demo.qmd`. It will need to be a quarto project. If you have an existing directory of documents that you want to treat as a project just invoke `quarto create-project` with no arguments from within the directory.

Preview with: `quarto preview quarto-for-reproducible-reporting-demo.qmd --to positslides-revealjs --no-watch-inputs --no-browse`

I can access my account and see my deployments at https://questionable.quarto.pub/.

Each piece of content, in order to be published, needs: 

- `_quarto.yml`
- `manifest.json`

```r

library(rsconnect)

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/report-mermaid-diagrams")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/website")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/report-lightbox")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/report-hybrid-knitr")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/report-hybrid-jupyter")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/report-commentable")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/report-branded")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/presentation")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/landing-page")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/email-programmatic")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/email-plots")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/email-conditional")
rsconnect::writeManifest()

setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo/content-examples/dashboard")
rsconnect::writeManifest()

# Return to the root directory
setwd("C:/Users/LisaAnders/Documents/git/quarto-for-reproducible-reporting-demo")
getwd()
```

The content examples included here are published using a manual trigger with github actions. For more on setting that up see: <https://solutions.posit.co/operations/deploy-methods/ci-cd/github-actions/index.html#github-actions-example> 

These items need to be added to the git repository to make that possible: 

- url: ${{ secrets.CONNECT_URL }}
- api-key: ${{ secrets.CONNECT_API_KEY }}


TODO: Add landing page, make it deploy last: <https://stackoverflow.com/questions/62750603/github-actions-trigger-another-action-after-one-action-is-completed> 