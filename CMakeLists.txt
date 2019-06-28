cmake_minimum_required(VERSION 3.5)
project(urg_node_msgs)

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set_directory_properties(PROPERTIES COMPILE_OPTIONS "-std=c++14")

# Dynamic reconfigure support
#generate_dynamic_reconfigure_options(cfg/URG.cfg)

rosidl_generate_interfaces(urg_node_msgs
  "msg/Status.msg"
  DEPENDENCIES builtin_interfaces std_msgs 
)

# Install mapping rules for the ros1_bridge
install(
  FILES mapping_rules.yaml
  DESTINATION share/${PROJECT_NAME}
)

ament_package()
