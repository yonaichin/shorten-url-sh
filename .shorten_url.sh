#!/bin/sh

long_url="$1"

if [ "$#" -eq  "0" ]
then
 echo "----------Created By Olly.W----------\nShorten URL: Pass long url as argument.\nExample: surl http://google.com"
else
curl -X POST \
  https://api-ssl.bitly.com/v4/shorten \
  -H 'Authorization: Bearer '$BITLY_TOKEN'' \
  -H 'Content-Type: application/json' \
  -H 'cache-control: no-cache' \
  -d '{
        "long_url": "'$long_url'"
}' | jq .link | sed -e "s/\"//g"| xclip -selection clipboard

echo "Done and Copied!"
fi

