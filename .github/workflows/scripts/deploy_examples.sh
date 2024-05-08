#!/bin/bash
set -xe

# Deploy examples
declare -a rExamples=("shiny-penguins" "plumber-loan-model" "rmd-penguins" "quarto-database" "shiny-evals-analysis" "rmd-conditional-emails")
for e in "${rExamples[@]}"; do
  pushd /tmp/posit-demo-assets/R/${e}
  echo "--> Deploying ${e}"
  deploy_yaml ${host} ${key} .internal.yml
  popd
done

declare -a pythonExamples=("streamlit-income-share" "dash-stock-pricing" "shiny-income-share" "fastapi-loan-model" "quarto-lightbox")
for e in "${pythonExamples[@]}"; do
  pushd /tmp/posit-demo-assets/Python/${e}
  echo "--> Deploying ${e}"
  deploy_yaml ${host} ${key} .internal.yml
  popd
done