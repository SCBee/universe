#ros #ros-packages

Within a ros2 workspace, we can create a package.

>[!tip] What is a package?
>A ros2 package is a container for a ros2 project that contains all of our code and dependencies. A package lets us more easily organize and share our work!
>It makes installing our project a lot easier.

To create a package, we use the command:
```
cd ros2_ws/src/ # go to the src of our ros2 workspace
ros2 pkg create my_robot_controller 
```

For the extra arguments, we can add:
```
# build types (python and c++)
--build-type ament_python
--build-type ament_cmake

# dependencies
--dependencies rclpy
--dependencies rclcpp
```

For c++ packages, if we are using vscode, we need to add the global ros2 installation to the `includePath` in the configuration json file.
```
"/opt/ros/iron/include/**"
```
