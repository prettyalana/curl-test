#!/bin/bash

curl -X POST http://localhost:5000/api/timeline_post -d 'name=Alana&email=alana@example.com&content=Hej! Hur mår du?'
curl --request GET http://localhost:5000/api/timeline_post
curl -X DELETE http://localhost:5000/api/timeline_post