#!/bin/bash

curl -X POST http://localhost:5001/api/timeline_post -d 'name=Alana&email=alana@example.com&content=Hej! Hur mår du?'
curl --request GET http://localhost:5001/api/timeline_post | jq 'keys'

for id in $(curl --request GET http://localhost:5001/api/timeline_post | jq -r '.timeline_posts[].id'); 
do
    curl -X DELETE http://localhost:5001/api/timeline_post/$id
done