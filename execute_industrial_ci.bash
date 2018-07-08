#!/bin/bash

if [ $1 -e ]; then
    rosrun industrial_ci run_ci ROS_DISTRO="kinetic" ROS_REPO=ros-shadow-fixed UPSTREAM_WORKSPACE=file ROSINSTALL_FILENAME=$1
else
    rosrun industrial_ci run_ci ROS_DISTRO="kinetic" ROS_REPO=ros-shadow-fixed
fi
