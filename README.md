# local_industrial_ci
The script repository to do industrial_ci check on local environment.  
Abstracts for each scripts are following.

- [`install_docker.bash`](./install_docker.bash) : Install the `docker-ce`.
- [`install_industrial_ci`](./install_industrial_ci.bash) : Install the [`industrial_ci`](https://github.com/ros-industrial/industrial_ci).
- [`execute_industrial_ci`](./execute_industrial_ci.bash) : Execute industrial_ci in local.

# Clone
**This repository should be cloned under `<catkin_ws>/src` directory.**  
```bash
$ cd <catkin_ws>/src
$ git clone https://github.com/RyodoTanaka/local_industrial_ci.git
```

# Usage
### `install_docker.bash`
```bash
$ source install_docker.bash
```
Then, docker installation starts automaticaly.

### `install_industrial_ci.bash`
```bash
$ cd <catkin_ws>
$ source src/local_industrial_ci/install_industrial_ci.bash
```

### `execute_industrial_ci.bash`
##### 1. Copy the script into desired ros package.
```bash
$ cp execute_industrial_ci.bash <desired_ros_package>/
```

##### 2. Go to the repository that you want to test.
```bash
$ roscd <desired_ros_package>
```

##### 3. Execute the script
If there is dependence packages described with `rosinstall` file (If you need to use wstool to install dependent packages),  
type file name as a first argument of the script.
If not, just ignore the first argument.

```bash
$ source execute_industrial_ci.bash <rosinstall_file_name>
```
