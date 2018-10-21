#!/bin/sh

xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/robond/catkin_ws/src/world/my_env.world " &
sleep 5
xterm  -e  " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/robond/catkin_ws/src/world/map.yaml 3d_sensor:=kinect" &
sleep 5
xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5
xterm -e "rosrun pick_objects pick_objects "
