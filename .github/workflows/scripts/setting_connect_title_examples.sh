#!/bin/bash
set -xe

#### Example using bash terminal ####

# Export the new title, appropriate key and server url
export DATA='{"title": "Reproduceable Reporting with Quarto Landing Page"}'
export CONNECT_SERVER='<REDACTED>'
export CONNECT_API_KEY='<REDACTED>'
export CONTENT_NAME='landing-page'

# Verify it was set
echo $CONNECT_SERVER

# Export the content details
export contentdetails=$(curl --silent --show-error -L --max-redirs 0 --fail \
    -X GET \
    -H "Authorization: Key ${CONNECT_API_KEY}" \
    "${CONNECT_SERVER}__api__/v1/content?name=${CONTENT_NAME}")

# Export content guid
export contentguid=$(curl -H "Authorization: KEY ${CONNECT_API_KEY}" \
    ${CONNECT_SERVER}/__api__/v1/content?name=${CONTENT_NAME} | jq -r '.[].guid')	

# Verify it was set
echo $contentguid

# Set the title
curl --silent --show-error -L --max-redirs 0 --fail -X PATCH \
    -H "Authorization: Key ${CONNECT_API_KEY}" \
    --data "${DATA}" \
    "${CONNECT_SERVER}__api__/v1/content/${contentguid}"
    
#### Example using github secrets ####

# Try 1, using github secrets as environment variables
export DATA='{"title": "My Custom Quarto Dashboard"}'
export CONTENT_NAME='dashboard'
export contentguid=$(curl -H "Authorization: KEY ${CONNECT_API_KEY}" ${CONNECT_SERVER}/__api__/v1/content?name=${CONTENT_NAME} | jq -r '.[].guid')
curl --silent --show-error -L --max-redirs 0 --fail -X PATCH -H "Authorization: Key ${CONNECT_API_KEY}" --data "${DATA}" "${CONNECT_SERVER}__api__/v1/content/${contentguid}"

# Try 2, using github secrets attached directly
export DATA='{"title": "My Custom Quarto Dashboard"}'
export CONTENT_NAME='dashboard'
export contentguid=$(curl -H "Authorization: KEY ${{ secrets.CONNECT_API_KEY }}" ${{ secrets.CONNECT_SERVER }}/__api__/v1/content?name=${CONTENT_NAME} | jq -r '.[].guid')
curl --silent --show-error -L --max-redirs 0 --fail -X PATCH -H "Authorization: Key ${{ secrets.CONNECT_API_KEY }}" --data "${DATA}" "${{ secrets.CONNECT_SERVER }}__api__/v1/content/${contentguid}"

# Doesn't work bcause of the new lines
export DATA='{"title": "Reproduceable Reporting with Quarto Landing Page"}'
export CONTENT_NAME='landing-page'
export contentguid=$(curl -H "Authorization: KEY ${{ secrets.CONNECT_API_KEY }}" \
  ${{ secrets.CONNECT_SERVER }}/__api__/v1/content?name=${CONTENT_NAME} | jq -r '.[].guid')
curl --silent --show-error -L --max-redirs 0 --fail -X PATCH \
  -H "Authorization: Key ${{ secrets.CONNECT_API_KEY }}" \
  --data "${DATA}" \
  "${{ secrets.CONNECT_SERVER }}__api__/v1/content/${contentguid}"




## Backup: 
contentguid=$(curl ${{ secrets.CONNECT_SERVER }}__api__/v1/content?name=landing-page -H "Authorization: Key ${{ secrets.CONNECT_API_KEY }}" | jq -r '.[]')
contentitle=$(curl ${{ secrets.CONNECT_SERVER }}__api__/v1/content/${contentguid} --data "${DATA}" -H "Authorization: Key ${{ secrets.CONNECT_API_KEY }}" | jq -r '.[]')



# Reference for accessing array: https://docs.posit.co/connect/admin/programmatic-provisioning/index.html#cleanup
# Reference for finding content guid: https://docs.posit.co/connect/cookbook/content/#content-reading
# Reference for setting title: https://docs.posit.co/connect/cookbook/content/#content-updating-single
# Connect API reference: https://docs.posit.co/connect/api/#get-/v1/content
          
          
          
          