#ros #ros-topics

>[!tip] What is a topic?
>Topics are the middleman for the communication between nodes. In other words, a topic is a named bus that nodes use to send messages. The data flow is unidirectional and anonymous.

A topic is based on the publisher-subscriber design pattern, where a node publishes data to a topic, and n-number of nodes are subscribed to that topic.

- Unidirectional means that the data only flows in one direction, from publisher to topic to subscriber.
- Anonymous means that the publisher and subscribers don't know anything about each other.
	- Publishers don't know about other publishers sending to the same topic
	- Publishers don't know about about the subscribers
	- Subscribers don't know about other subscribers
	- Subscribers don't know about the publisher

The data would flow like: `/talker` -> `/chatter` -> `/listener`

We can introspect topics using the `ros2 topic` commands:
```
ros2 topic list
ros2 topic info <topic_name>
```

We can also introspect the type by using:
```
ros2 interface show <type_name>
ros2 interface show std_msgs/msg/String
```

We can also make a manual CLI subscriber by doing
```
ros2 topic echo <topic_name>
```


