#!/bin/bash

if [ $1 -e ]; then
    rosrun industrial_ci run_ci ROS_DISTRO="kinetic" UPSTREAM_WORKSPACE=file ROSINSTALL_FILENAME=$1
else
    rosrun industrial_ci run_ci ROS_DISTRO="kinetic"
fi
