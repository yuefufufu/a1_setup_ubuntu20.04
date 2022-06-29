sudo su

source /home/yue/catkin_ws/devel/setup.bash

roslaunch unitree_legged_real realtest.launch rname:=a1 ctrl_level:=highlevel firmwork:=3_2

rosrun unitree_legged_real keyconfig.py cmd_vel:=/cmd_vel

catkin build unitree_legged_real 

SendHighROS.mode = 0;//1で姿勢の制御、2で走行に関する制御、34
SendHighROS.roll  = 0;//左右に傾く(正で右側が下がる)
SendHighROS.pitch = 0;//前後に傾く(正で前方が下がる)
SendHighROS.yaw = 0;//左右を向く(正で左を向く)
SendHighROS.bodyHeight = 0.0f;//足の曲げ伸ばし(正で足を伸ばす)

SendHighROS.mode = 0;//2で走行に関する制御
SendHighROS.forwardSpeed = 0.0f;//前後進(正で前進)
SendHighROS.sideSpeed = 0.0f;//左右にスライド移動(正で左に移動)
SendHighROS.rotateSpeed = 0.0f;//左右に回転(正で左向きに回転)
