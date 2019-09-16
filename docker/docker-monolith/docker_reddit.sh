#!/bin/bash
docker run -d --network=back_net --name=mongo_db --network-alias=post_db --network-alias=comment_db  mongo:latest
docker run -d --network=back_net --name=post  hellcrazyrabbit/post:1.0
docker run -d --network=back_net --name=comment hellcrazyrabbit/comment:1.0
docker run -d --network=front_net --name=ui -p 9292:9292 hellcrazyrabbit/ui:2.0-alpine
