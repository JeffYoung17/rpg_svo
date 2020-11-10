#!/usr/bin/env bash
docker run -i -t -p 5900:5900 -e RESOLUTION=1920x1080 \
-v /home/yangqf/docker_repo/svo/src:/root/catkin_ws/src \
-v /home/yangqf/docker_repo/svo/third_party:/root/third_party \
-v /home/yangqf/docker_repo/svo/data:/root/data feng/slam:svo