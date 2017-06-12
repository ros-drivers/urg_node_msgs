cmake_minimum_required(VERSION 2.8.3)
project(urg_node_msgs)

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set_directory_properties(PROPERTIES COMPILE_OPTIONS "-std=c++11")

# Dynamic reconfigure support
#generate_dynamic_reconfigure_options(cfg/URG.cfg)

rosidl_generate_interfaces(urg_node_msgs
  "msg/Status.msg"
  DEPENDENCIES builtin_interfaces std_msgs 
)

ament_package()
