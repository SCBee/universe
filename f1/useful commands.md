
Steps to spin up the docker container

In one terminal
```bash
docker compose up
```

In n number of terminals
```bash
docker exec -it f1tenth_gym_ros-sim-1 /bin/bash
```

Source ros2 and local install
```bash
source /opt/ros/foxy/setup.bash
source install/local_setup.bash
```

Launch the sim
```bash
ros2 launch f1tenth_gym_ros gym_bridge_launch.py
```

Access the sim's gui
http://localhost:8080/vnc.html

