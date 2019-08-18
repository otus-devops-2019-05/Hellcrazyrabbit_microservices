#!/bin/bash
docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db mongo:latest
docker run -d --network=reddit --network-alias=post hellcrazyrabbit/post:1.0
docker run -d --network=reddit --network-alias=comment hellcrazyrabbit/comment:1.0
docker run -d --network=reddit -p 9292:9292 hellcrazyrabbit/ui:2.0-alpine
