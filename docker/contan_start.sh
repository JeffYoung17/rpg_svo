#!/usr/bin/env bash

DOCKER_NAME="${USER}_robot_slam_svo"

docker create -it -p 5900:5900 -e RESOLUTION=1920x1080 \
--name ${DOCKER_NAME} \
--hostname ${HOSTNAME} \
-v /home/${USER}/docker_repo/svo/src:/root/catkin_ws/src \
-v /home/${USER}/docker_repo/svo/third_party:/root/third_party \
-v /home/${USER}/docker_repo/svo/data:/root/data \
jeffyoung17/robotics:slam_svo

docker start ${DOCKER_NAME}