#ros #ros-publisher #ros-nodes 

>[!tip] Publisher
>A publisher is a special type of ROS2 node that sends data to n-number of nodes.
>The publisher's callback function can be called once, a specified frequency, or in response to a message.

Publishers send data to another node. This data can also modify existing data for a node.

For example, we can send and change the data in a specified node. That could end up causing that node to change its state, like setting the coordinates that a robot arm should move, would update that robot and have it move to that coordinate.

A simple publisher for the turtlesim node is
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from geometry_msgs.msg import Twist


class DrawCircleNode(Node):
    def __init__(self):
        super().__init__("draw_circle")
		# create a publisher with a specified data type and msg
		# the "10" is the queue size
        self.cmd_vel_pub_ = self.create_publisher(Twist, "/turtle1/cmd_vel", 10)
		# create a timer to invoke the callback function every 0.5 seconds
        self.timer = self.create_timer(0.5, self.send_velocity_command)
        self.get_logger().info("Draw circle node initialized.")

    def send_velocity_command(self):
		# create a message of type Twist
        msg = Twist()
		# modify the msg's linear and angular velocities
        msg.linear.x = 2.0
        msg.angular.z = 1.0
		# publish the message using the publisher object
        self.cmd_vel_pub_.publish(msg)

def main(args=None):
    rclpy.init(args=args)
    node = DrawCircleNode()
    rclpy.spin(node)
    rclpy.shutdown()
```

A publisher works hand in hand with subscribers, [[ROS2 - Creating a Subscriber]].

