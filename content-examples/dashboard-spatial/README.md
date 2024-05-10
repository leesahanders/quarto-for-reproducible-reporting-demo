# UV Spatial Map 

**Access the dashboard at: <>**


## TODO

-[] Make maps with leaflet: <https://r-charts.com/spatial/interactive-maps-leaflet/> 
-[] Consider using kepler: <https://github.com/keplergl/kepler.gl> 
-[] Consider switching to choropleth: <https://r-charts.com/spatial/choropleth-map-ggplot2/> 


## Preview

```
quarto preview dashboard-spatial.qmd --to dashboard --no-watch-inputs --no-browse
```

## Publish

In order to deploy it needs to be a project: 
```
quarto create project 
```

Done through: <https://quarto.org/docs/publishing/quarto-pub.html> 

# References 

Inspired by Jeremy Allen's Whale dashboard: <https://github.com/jeremy-allen/whale-dashboard/blob/main/gray-whales.qmd> 

# Publishing

Notes for the developer:

This presentation is published to the RStudio demo server using push button publishing from the RStudio IDE.

It is also published to my quarto pub space. I run quarto publish quarto-pub from terminal after `cd`-ing in to the directory. Answer "Y" to overwrite my previous site and to use the correct account. For example, to publish this slide deck I'm running: `quarto publish quarto-pub 2024-git-demo.qmd`. It will need to be a quarto project. If you have an existing directory of documents that you want to treat as a project just invoke `quarto create-project` with no arguments from within the directory.

I can access my account and see my deployments at https://questionable.quarto.pub/.
