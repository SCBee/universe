#ros #ros-nodes

After creating a package, we can start creating a node. The package determines how we can develop our nodes.

While nodes in a package can be written in c++, python, java, matlab, or a mix of them, for the first node, we've only added rclpy, a ros dependency, which means we can only use python for this node.

Going into the directory of our package which will be:
```
ros2_ws/src/my_robot_controller/my_robot_controller/
```

Create our first node using python by creating a py script in the dir:
```
touch my_first_node.py
chmod +x my_first_node.py # let us execute this file
```

The code for our first node is:
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node

class MyNode(Node):
    def __init__(self):
        super().__init__("first_node")
        self.get_logger().info("Hello from my first node in ros2!")

def main(args=None):
    # initiate the ros communications
    rclpy.init(args=args)

    # create node
    node = MyNode()

    # spin in ros2 means that the node is kept alive until it's killed
    # all callbacks will be available until killed
    rclpy.spin(node)

    # close and clean comms
    rclpy.shutdown()

if __name__=="__main__":
    main()
```

- To keep a node alive, we need to pass the node object to the rclpy.spin() method.

Inside the setup.py file, we need to add the node to our entry points:
```python
"<node_name> = <package_name>.<node_file_name>:<entry point function name>"

#example
"test_node = my_robot_controller.my_first_node:main"
```

Build the package with colcon
```
colcon build --symlink-install
source ~/.bashrc
```

`--symlink-install` lets us run the most recent version of our python files without having to rebuild the package. Symlink is required for python because it's an interpreted language and not a compiled language like c++.

then run the package with
```
ros2 run <package_name> <node_name>

ros2 run my_robot_controller test_node
```

In ROS2, we can repeatedly execute something (e.g., execute a function) using a timer and a callback.

A timer is instantiated in the class `__init__` portion (in py) and the class constructor (in c++). The method will take a length of time (e.g., 1.0 for 1 second) and a function object. The function object will be called every time the specified length of time is elapsed.

The code for this is:
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node

class TestNode(Node):
	def __init__(self):
		super().__init__("test_node")
		self.get_logger().info("Test_Node Initialized")
		self.counter_ = 0
		self.create_timer(1.0, self.timer_callback)
	
	def timer_callback(self):
		self.get_logger().info(f"hello {self.counter_}")
		self.counter_ += 1

def main(args=None):
	# initiate the ros communications
	rclpy.init(args=args)
	
	# create node
	node = TestNode()
	
	# spin in ros2 means that the node is kept alive until it's killed
	# all callbacks will be available until killed
	rclpy.spin(node)
	
	# close and clean comms
	rclpy.shutdown()

if __name__ == "__main__":
	main()
```

We can also introspect running nodes using the `ros2 node` commands:
```
ros2 node list
ros2 node info <node_name>
```

>[!info] C++ Node

For c++, a simple node would look like
```cpp
#include "rclcpp/rclcpp.hpp"

int main(int argc, char **argv) {
    rclcpp::init(argc, argv);
    auto node = std::make_shared<rclcpp::Node>("cpp_test");
    RCLCPP_INFO(node->get_logger(), "Hello cpp node!");
    rclcpp::spin(node);
    rclcpp::shutdown();
    return 0;
}
```

In the CMake file, we need to add this above the `ament_package()` line.
```
add_executable(cpp_node src/my_first_node.cpp)
ament_target_dependencies(cpp_node rclcpp)

install(TARGETS
  cpp_node
  DESTINATION lib/${PROJECT_NAME}
)
```

- `add_executable()` is to create an executable with the name of the executable and the source files used to compile it.
- `ament_target_dependencies` is to link the libraries that the executable require to run. We need to pass the executable name (same one that we used in `add_executable`) and the name of the dependencies like `rclcpp`
- `install()` is to install everything together, the target files, the newly compiled executable, and the destination where it should be saved.

##### Node Template Code
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node

class MyCustomNode(Node): # MODIFY NAME
   def __init__(self):
       super().__init__("node_name") # MODIFY NAME

def main(args=None):
   rclpy.init(args=args)
   node = MyCustomNode() # MODIFY NAME
   rclpy.spin(node)
   rclpy.shutdown()

if __name__ == "__main__":
   main()
```

```cpp
#include "rclcpp/rclcpp.hpp"

class MyCustomNode : public rclcpp::Node // MODIFY NAME
{
public:
    MyCustomNode() : Node("node_name") // MODIFY NAME
    {
    }

private:
};

int main(int argc, char **argv)
{
   rclcpp::init(argc, argv);
   auto node = std::make_shared<MyCustomNode>(); // MODIFY NAME
   rclcpp::spin(node);
   rclcpp::shutdown();
   return 0;
}
```
