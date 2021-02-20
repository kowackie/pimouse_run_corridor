#!/bin/bash -xve

# required packages

# ros install
cd ..
git clone https://github.com/kowackie/ros_setup_scripts_Ubuntu20.04_server.git
cd ros_setup_scripts_Ubuntu20.04_server
bash ./step0.bash
bash ./step1.bash

# catkin setup
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
source /opt/ros/noetic/setup.bash
catkin_init_workspace
cd ~/catkin_ws/
catkin_make
