#ros #ros-nodes #ros-publisher #ros-subscriber 

A node can be both a publisher and subscriber, meaning that it can subscribe to a topic (receive data) and react to it and publish to another topic (send data).

The code for a combined publisher and subscriber node is
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist

class TurtleController(Node):
    def __init__(self):
        super().__init__("turtle_controller")
        self.get_logger().info("turtle_controller node initialized")

        self.cmd_vel_pub_ = self.create_publisher(Twist, "/turtle1/cmd_vel", 10)
        self.pose_sub_ = self.create_subscription(
            Pose, "turtle1/pose", self.pose_callback, 10
        )

    def pose_callback(self, msg: Pose):
        self.get_logger().info(f"x: {msg.x}, y: {msg.y}, theta: {msg.theta}")

        cmd = Twist()
        if msg.x > 9.0 or msg.x < 2.0 or msg.y > 9.0 or msg.y < 2.0:
            x = 1.0
            z = 0.9
        else:
            x = 5.0
            z = 0.0

        cmd.linear.x = x
        cmd.angular.z = z
        self.cmd_vel_pub_.publish(cmd)


def main(args=None):
    rclpy.init(args=args)
    node = TurtleController()
    rclpy.spin(node)
    rclpy.shutdown()


if __name__ == "__main__":
    main()
```

This example subscribes to the turtlesim `Pose` which is the coordinates of the turtle, and then publishes to the turtlesim `cmd_vel`, changing the turtle's linear and angular velocities.