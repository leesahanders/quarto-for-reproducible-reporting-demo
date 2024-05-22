# Quarto-for-reproducible-reporting-demo 

> **Warning**
> This is part of a repository that is prone to  Changes and overhauls will happen without notice, but feel free to reach out with any questions/corrections/or help needs at lisamaeanders@gmail.com

**Access the deployed content at: <https://loyal-jaybird.staging.eval.posit.co/pub/landing-page/>**

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
- rmflight quarto blog: <https://rmflight.github.io/> 
- Let's make a presentation with quarto: <https://gesiscss.github.io/quarto-workshop/material/slides/05_presentations.html#/title-slide> 
- Sharing data in a Quarto dashboard by Mine: <https://mine.quarto.pub/quarto-dashboards-pydata/#/title-slide> 
- Thomas Mock's presentation to Austin Python meetup in 2024: <https://thomasmock.quarto.pub/python-austin/#/> 
- [Parameterized Reports with Quarto: R-Ladies DC Workshop](https://jadeyryan.com/talks/2024-01-18_rladies-dc_quarto-params/)
- [Extending quarto](https://www.youtube.com/watch?v=EihuM4oyOvs)
- [Quarto job scheduling](https://github.com/ryjohnson09/quarto-job-scheduling?tab=readme-ov-file) 
- [Some Quarto Tips for Academic Presentation](https://kazuyanagimoto.com/blog/2022/12/27/quarto_tips/)
- [Posit blog, building a reporting infrastructure with quarto](https://posit.co/blog/building-a-reporting-infrastructure-with-quarto/)
- [2022 talk by Daniel Chen at pydata 2022]( https://github.com/chendaniely/pydata-nyc-2022-python_quarto) and [the recording](https://www.youtube.com/watch?v=AnrGW8zoLx8)
- [2022 topic building websites with quarto](https://rstudio-conf-2022.github.io/get-started-quarto/materials/06-websites.html#/websites) 
- [Making pretty pdf's with quarto](https://nrennie.rbind.io/blog/making-pretty-pdf-quarto/) 

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

I can set each one manually with this: 

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

Each piece of content was also made its own project, so we can use that to walk into each one to update the `renv.lock` and `manifest.json` instead. 

## Github actions

The content examples included here are published using a manual trigger with github actions. For more on setting that up see: <https://solutions.posit.co/operations/deploy-methods/ci-cd/github-actions/index.html#github-actions-example> 

These items need to be added to the git repository to make that possible: 

- url: ${{ secrets.CONNECT_URL }}
- api-key: ${{ secrets.CONNECT_API_KEY }}

The landing page is deployed last, by setting it to depend on a notification of successful deployment after the other content items. This is because it is programmatically looking up content, they need to be deployed first in order to be found. 

```
  notify:
    needs: [connect-publish-dashboard,connect-publish-email-conditional,connect-publish-email-plots,connect-publish-email-programmatic,connect-publish-presentation,connect-publish-report-branded,connect-publish-report-commentable,connect-publish-report-hybrid-jupyter,connect-publish-report-hybrid-knitr,connect-publish-report-lightbox,connect-publish-website,connect-publish-report-mermaid-diagrams]
    name: connect-publish-landing-page
    runs-on: ubuntu-latest
```

### Content Name 

Connect currently lacks a supported way to deploy content while setting:

- custom content URLs
- cover images
- ACLs
- Content title


There are two options. 

1. This project is using the Connect API to update the content title after deploying. 

```
- name: Use Connect API to set content title
  run: |
    export DATA='{"title": "My Custom Quarto Dashboard"}'
    export CONTENT_NAME='dashboard'
    export contentguid=$(curl -H "Authorization: KEY ${{ secrets.CONNECT_API_KEY }}" ${{ secrets.CONNECT_SERVER }}/__api__/v1/content?name=${CONTENT_NAME} | jq -r '.[].guid')
    echo contentguid
    curl --silent --show-error -L --max-redirs 0 --fail -X PATCH -H "Authorization: Key ${{ secrets.CONNECT_API_KEY }}" --data "${DATA}" "${{ secrets.CONNECT_SERVER }}__api__/v1/content/${contentguid}"
```

2. Alternatively, we could us an `.internal.yml` file located at the root of the tree of the content to be deployed, following [this example](https://github.com/sol-eng/stockportfolio/blob/master/.internal.yml) which illustrates usage. This would be useful if there are more items needing update, for example adding an image. 

- Deployment is manifest-based, so example content must have a `manifest.json`
  - `requirements.txt` or `renv.lock` files should also be included as appropriate
  - content should be self-contained


### Setting tags 

Add a tag hierarchy: 

Webinar |-| Quarto Lisa
[Assign the tag to the content item)[https://docs.posit.co/connect/cookbook/organizing/#tags-assigning] 

```
export DATA='{"tag_id": "15"}'
curl --silent --show-error -L --max-redirs 0 --fail -X POST \
    -H "Authorization: Key ${CONNECT_API_KEY}" \
    --data "${DATA}" \
    "${CONNECT_SERVER}__api__/v1/content/ccbd1a41-90a0-4b7b-89c7-16dd9ad47eb5/tags"
# =>
```

We can then list all content associated with those tags: 

```
curl --silent --show-error -L --max-redirs 0 --fail -X GET \
    -H "Authorization: Key ${CONNECT_API_KEY}" \
    "${CONNECT_SERVER}__api__/v1/tags/15/content"
# => [
# =>   {
# =>     "guid": "ccbd1a41-90a0-4b7b-89c7-16dd9ad47eb5",
# =>     "name": "shakespeare",
# =>     "title": "Shakespeare Word Clouds",
# =>     ...
# =>   }
# => ]
```

### Adding a step to update the manifest.json 

This was omitted in order to speed up publishing, but here is an example that could be followed to add it back in (particularly useful if also wanting to implement any testing): 

```
  pub-email-conditional:
    name: pub-email-conditional
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: r-lib/actions/setup-pandoc@v2
      - uses: r-lib/actions/setup-r@v2
        with:
          r-version: 4.3.1
          py-version: 3.10.12
          use-public-rspm: true
      - name: Set up Quarto
        uses: quarto-dev/quarto-actions/setup@v2
      - name: Set up Python
        uses: actions/setup-python@v2
      - name: Install setup-connect
        uses: rstudio/actions/setup-connect@main
      - name: Setup renv environment
        uses: r-lib/actions/setup-renv@v2
      - name: Install packages
        uses: r-lib/actions/setup-r-dependencies@v2
        with:
          packages: |
            any::rsconnect 
            any::dplyr
      - name: Install rsconnect package
        run: Rscript --vanilla -e "install.packages('rsconnect', repos=c(CRAN = 'https://packagemanager.posit.co/cran/__linux__/noble/latest'))"
      - name: Version rsconnect package
        run: Rscript --vanilla -e "packageVersion('rsconnect')"
      - name: Update lock file 
        run: Rscript --vanilla -e "renv::snapshot()"
      - name: Create manifest.json
        shell: Rscript {0}
        run: |
          rsconnect::writeManifest()
      - name: Publish the app to Connect
        uses: rstudio/actions/connect-publish@main
        with:
          url: ${{ secrets.CONNECT_URL }}
          api-key: ${{ secrets.CONNECT_API_KEY }}
          access-type: all
          show-logs: TRUE
          force: FALSE
          dir: ./content-examples/email-conditional/:email-conditional
      - name: Use Connect API to set content title
        run: |
          export DATA='{"title": "Using an RSS feed to send conditional emails when a blog has new posts"}'
          export CONTENT_NAME='email-conditional'
          export contentguid=$(curl -H "Authorization: KEY ${{ secrets.CONNECT_API_KEY }}" ${{ secrets.CONNECT_SERVER }}/__api__/v1/content?name=${CONTENT_NAME} | jq -r '.[].guid')
          echo contentguid
          curl --silent --show-error -L --max-redirs 0 --fail -X PATCH -H "Authorization: Key ${{ secrets.CONNECT_API_KEY }}" --data "${DATA}" "${{ secrets.CONNECT_SERVER }}__api__/v1/content/${contentguid}"
```

## New server

For uploading to a new server, follow these steps: 

Get the Connect URL and generate the API key with a publisher or admin account. 

Update the environment variables as secrets on github actions: 

- `CONNECT_URL=<redacted>`
- `CONNECT_SERVER=<redacted>`
- `CONNECT_API_KEY=<redacted>`

Add tags on the server following this naming convention (or a different one and update the deploy.yaml script under github actions): 

- `Webinar |-| Quarto Lisa`


