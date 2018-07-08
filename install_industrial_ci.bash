#!/bin/bash

SCRIPT_PATH=$( dirname ${BASH_SOURCE:-$0} )
CURRENT=$(pwd)

cd ${SCRIPT_PATH}
git clone https://github.com/ros-industrial/industrial_ci.git
catkin build
source devel/setup.bash
cd ${CURRENT}
