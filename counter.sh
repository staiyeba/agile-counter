#!/bin/sh

echo "# Collecting the number of occurrences of the words agile, continuous integration, devops and cloud on reddit titles per day"

agile=$(wget -q -O - https://www.reddit.com/search/\?q\=agile\&t\=day | grep -e title | grep -i agile | wc -l)

ci=$(wget -q -O - https://www.reddit.com/search/\?q\=continuous%20integration\&t\=day | grep -e title | grep -i "continuous integration" | wc -l)

devops=$(wget -q -O - https://www.reddit.com/search/\?q\=devops\&t\=day | grep -e title | grep -i devops | wc -l)

cloud=$(wget -q -O - https://www.reddit.com/search/\?q\=cloud\&t\=day | grep -e title | grep -i cloud | wc -l)

echo "acit_count{word=\"agile\"} $agile"

echo "acit_count{word=\"continuous integration\"} $ci"

echo "acit_count{word=\"devops\"} $devops"

echo "acit_count{word=\"cloud\"} $cloud"
