#ros #ros-service

>[!warning] rqt_graph and services
>Services don't show up on rqt_graph. To inspect services, use the command `ros2 service list` and `ros2 service info <service_name>`

Services are a special type of node that are only invoked when called.

They are useful for things like updating states that we don't need to know all the time or performing an expensive calculation that we don't want running all the time. It is also useful when we want to change the settings of the robot itself.

Services are good to use when we require a response from our request or if we want to wait for the response (like if the robot is off but we want our request to be sent out as soon as we establish connection).

We can manually call a service in the CLI by invoking
```
ros2 service call <service name> "{parameters in dict format}"
```
