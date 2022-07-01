#!/bin/bash

cd
sudo apt remove ros-noetic-gazebo*
sudo apt remove libgazebo*
sudo apt remove gazebo*
sudo apt install gazebo9*

cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin build

cd
sudo apt-get install -y libgazebo9-dev
source .bashrc
cd ~/catkin_ws/src
git clone https://github.com/ros-simulation/gazebo_ros_pkgs.git -b noetic-devel
rosdep update
cd ~/catkin_ws
catkin build
cd
source .bashrc

gazebo -v