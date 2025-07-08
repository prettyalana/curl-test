#!/bin/bash

curl --request GET http://localhost:5001/api/timeline_post
curl -X POST http://localhost:5001/api/timeline_post -d 'name=Alana&email=alana@example.com&content=Hej! Hur mår du?'
curl -X DELETE http://localhost:5001/api/timeline_post