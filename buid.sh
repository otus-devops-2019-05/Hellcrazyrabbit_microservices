#!/bin/bash
for i in ui post-py comment
do
 cd src/$i
 bash docker_build.sh
 cd -
done
