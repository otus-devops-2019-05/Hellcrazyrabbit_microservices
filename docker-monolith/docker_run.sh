#!bin/bash
docker run -d --network=reddit --network-alias=p_db --network-alias=c_db mongo:latest
docker run -d --network=reddit -e POST_DATABASE_HOST=p_db --network-alias=p hellcrazyrabbit/post:1.0
docker run -d --network=reddit -e POST_DATABASE_HOST=c_db --network-alias=c hellcrazyrabbit/comment:1.0
docker run -d --network=reddit -e POST_SERVICE_HOST=p -e COMMENT_SERVICE_HOST=c -p 9292:9292 hellcrazyrabbit/ui:1.0
