#ros

ROS2 is a framework that lets developers create software for robots quickly and more easily.

ROS2 is a middleware.

Middleware is software that is between the OS and the applications running on the OS. They allow data management and communication between the layers and applications.

Basic ROS2 Concepts:
- Node: A program that uses ROS2.
- Message: Data being sent from one node to another.
	- Each message has a type that determines the data it contains.
- Topic: A bus for nodes to exchange messages. Messages are sent to topics and nodes can listen to the topics they are interested in, and receive messages sent to that topic.
	- Nodes can publish or subscribe to a topic.
	- Typically, a topic has 1 publisher and n-subscribers.
- Publisher: Nodes that send data to a topic.
- Subscriber: Nodes that listen and receive data from a topic.
- Service: Services are another way for nodes to communicate with each other.
	- Based on the idea of call-and-receive, which means that clients (nodes that want data) need to send a request to get the data.
	- Different from a topic's publisher-subscriber model since topics continuously update their listeners.
- Package: A package is a container for ROS2 code. They are useful for installing or sharing code, and allow others to install/build our ROS2 work easily.

> [!tip] ROS2 is very complex and there are a lot of things to learn about it!
> ROS2 code can be written using C++ or Python, and ROS2 lets us build our launch files using Python instead of xml files (ROS1 only allowed xml files for launch files.)

Basic Commands
```
# ros2 run package_name node_name
ros2 run turtlesim turtlesim_node
 
ros2 node list
ros2 node info /turtlesim # Learn more about a particular node
 
ros2 topic list # List of topics
ros2 topic info /turtle1/pose 
ros2 topic type /turtle1/pose 
 
ros2 msg show turtlesim/Pose # * I am NOT sure about this
 
ros2 topic echo /turtle1/pose # show the messages of a particular topic
```

Node Commands
```
ros2 run <package_name> <executable_name>
ros2 launch <package_name> <launch_name>
ros2 node list
ros2 node info <node_name>
```

Topics Commands
```
rqt_graph
ros2 topic list
ros2 topic list -t # list the type of messsages published by topic
ros2 topic echo <topic_name>
ros2 topic info <topic_name>
ros2 interface show <msg_type>
ros2 topic pub <topic_name> <msg_type> ‘<args>’
ros2 topic hz <topic_name>
```

Service Commands
```
ros2 service list
ros2 service type <service_name>
ros2 service list -t
ros2 service find <type_name>
ros2 interface show <type_name>.srv
ros2 service call <service_name> <service_type> <arguments>
```

Parameters
```
ros2 param list
ros2 param get <node_name> <parameter_name>
ros2 param set <node_name> <parameter_name> <value>
```
