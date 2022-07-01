

cd 
mv gazebo_ros_pkgs ~/catkin_ws/src/

cd
sudo 
sudo apt remove ros-noetic-gazebo*
sudo apt remove libgazebo*
sudo apt remove gazebo*
sudo apt install gazebo9*

cd ~/catkin_ws/src
rosdep update
rosdep check --from-paths . --ignore-src --rosdistro noetic
rosdep install --from-paths . --ignore-src --rosdistro noetic -y

cd ~/catkin_ws/
catkin build

source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash

cd ~/lcm
mkdir build
cd build
cmake ../
make
sudo make install
cd ~/unitree_legged_sdk
mkdir build
cd build
cmake ../
make

cd ~/a1_setup
mv unitree_ros ~/catkin_ws/src/
mv unitree_ros_to_real ~/catkin_ws/src/

cd
echo "source /usr/share/gazebo-9/setup.sh" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=~/catkin_ws:${ROS_PACKAGE_PATH}" >> ~/.bashrc
echo "export GAZEBO_PLUGIN_PATH=~/catkin_ws/devel/lib:${GAZEBO_PLUGIN_PATH}" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=~/catkin_ws/devel/lib:${LD_LIBRARY_PATH}" >> ~/.bashrc
echo "# 3_1, 3_2" >> ~/.bashrc
echo "export UNITREE_SDK_VERSION=3_2" >> ~/.bashrc
echo "export UNITREE_LEGGED_SDK_PATH=~/unitree_legged_sdk" >> ~/.bashrc
echo "#export ALIENGO_SDK_PATH=~/aliengo_sdk" >> ~/.bashrc
echo "# amd64, arm32, arm64" >> ~/.bashrc
echo "export UNITREE_PLATFORM="amd64"" >> ~/.bashrc
echo "export LCM_PATH=/usr/local/lib/liblcm.so.1" >> ~/.bashrc

apt install idconfig
sudo ldconfig -v

cd ~/catkin_ws
catkin build unitree_legged_msgs
catkin build 