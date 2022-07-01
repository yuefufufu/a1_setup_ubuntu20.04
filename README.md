# a1_setup_ubuntu20.04

cd ~/catkin_ws
catkin build unitree_legged_msgs
catkin build 

echo "# a1_setup_ubuntu20.04" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/yuefufufu/a1_setup_ubuntu20.04.git
git push -u origin main