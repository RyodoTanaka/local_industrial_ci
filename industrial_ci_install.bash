#!/bin/bash

SCRIPT_PATH=$( dirname ${BASH_SOURCE:-$0} )
CURRENT=$(pwd)

git clone https://github.com/ros-industrial/industrial_ci.git
catkin build
source devel/setup.bash
cd ${CURRENT}
