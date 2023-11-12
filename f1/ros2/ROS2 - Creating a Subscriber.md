#ros #ros-subscriber #ros-nodes 

>[!tip] Subscriber
>A subscriber is a special type of node that receives data from a specified node (publisher). The subscriber invokes a callback function with the message received whenever the publisher sends out an update.

Subscribers receive data from another node. With the incoming data, we can do something in response to the message received.

For example, if we are subscribed to a velocity message that gives us `x_vel: N, y_vel: M` and we have a limit on the velocity, then in response, we can turn off the robot's engine.

A subscriber gets a response very fast, and it's continuously updated. This makes it very good for responding to changes quickly after it occurs.

The code for making a simple subscriber is
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from turtlesim.msg import Pose

class PoseSubNode(Node):
    def __init__(self):
        super().__init__("pose_sub")
        self.pose_sub_ = self.create_subscription(
            Pose, "turtle1/pose", self.pose_callback, 10
        )

    def pose_callback(self, msg: Pose):
        self.get_logger().info(f"x: {msg.x}, y: {msg.y}, theta: {msg.theta}")

def main(args=None):
    rclpy.init(args=args)
    node = PoseSubNode()
    rclpy.spin(node)
    rclpy.shutdown()

if __name__ == "__main__":
    main()
```
