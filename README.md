

# First Robotics Project


This is the first project of the Robotics' course held at Politecnico di Milano,
academic year 2019/2020.

## Introduction

Each year during the course is presented to the students the opportunity to
participate in a project that involves simulation using the ROS middleware to experience what does mean to design and code programs that will operate and automate a robot or a system of robots.

This year the project was to read some gps data from two different vehicles, encode those datas and computing the distance between the vehicles.

This repository contains all the files needed to be able to run this simulation and see the final result.

- The include folder contains the header file of the service responsible of calculating distance.

- The `.cfg` folder contains the dynamic reconfigure params.

- The folder named launch contains a `.launch` file, responsible of simulating a Terminal call to start each node.

- The folder named msg contains a `.msg` file. This file is the prototype of the custom message that contains the distance between the vehicles and the
relative status tag.

- The src folder contains all the `.cpp` files that implement all the nodes' behavior.

- The srv folder contains the `.srv` file that describes the structure of the service responsible of calculating the distance. The content of this file is a list of data types that  will be exchanged during each service request and response.

- The assets folder contains all the `.png` files needed for this documentation, it is not used in the project.



## How to compile the simulation

First of all, after downloading the src folder and placing it in an empty directory, you need to run the command `catkin_make` in a terminal.
This will build the workspace, and compile the `.cpp` files.
Next, to install the custom message and the service, you need to run in the terminal `catkin_make install`. This command will compile the `.msg` and `.srv` files
into cpp code and headers, and will enable ROS to use them.

After building the project in a new workspace, ROS needs to be able to access all the project files, and to do that, you also need to run `source devel/setup.bash` in the terminal.

Now ROS can finally start our simulation.

## How to start the simulation  

If everything went according to plans, now is time to invoke the ROS core, and start our executables.

To start the ROS middleware, run `roscore` in a separate terminal, without ever closing it.
Then, you need to launch all the nodes in the project. From the root workspace folder `cd` into the launch folder (or open it in the file manager and then right-click, Open in Terminal) and type
`roslaunch odometry.launch`

After this command, in the terminal should appear six nodes with their relative name.

Now the only thing left to do is starting a bag.

The professors provided a bag of gps data recorded on the Monza ENI Circuit, when an autonomous car was driving and following a van.

To start this bag of data, run in a separate terminal the command `rosbag play project.bag`.


## Design and structure

Our project is designed to use six nodes for the simulation.

1. Two encoder nodes are used to read the data coming from the bag's topics. The task of each node is to read from the bag a set of geographical coordinates, encoding them into ENU
and publish the new data onto a new topic, wrapped in a `nav_msgs/Odometry` message.

2. One master node subscribes both the two new ENU topics with a message filter. After subscribing those two topics with a message filter that implements an approximate time filtering policy, this node
pushes all the valid data onto a service call. The data to be flagged as valid needs to have all three of its coordinates not equal to 0. A message like (0,0,0)
represents a satellite fix error, and will not be placed in a service call.

3. The Service node listens for all valid requests, and all this node has to do is to compute the distance. The distance is computed using the Euclidean distance formula, and returned to the caller node.

For each valid distance the master node then proceeds to create a custom message containing two values, the distance and a status flag, and subsequently proceeds to publish them onto a results' dedicated topic.

4. The last two nodes are the tf nodes, they subscribe separately to the previously created `nav_msgs/Odometry` topics, and their task is to compute the tf messages.



## How to visualize each process

If everything went well, and the simulation started, now there is a number of processes running in background. ROS provides a series of tools to visualize the general structure of the simulation.

To see the graph of nodes, services and topics, run in a terminal the command `rqt_graph`.
To see the tf `frame_id` and `child_frame_id`, run `rosrun rqt_tf_tree rqt_tf_tree`.

Those two commands will provide a graphical overview of the processes.

 ![rqtgraph](/assets/rqt_graph.png)

 *The rqt graph of the simulation*

 ![tftree](/assets/tf_tree.png)

 *The rqt tf tree of the simulation*



Broadcasting the `/tf` messages means that rviz can be used to see the movements of the vehicles that are being simulated with the bag's data.

To be able to see them, you need to start a rviz window with `rosrun rviz rviz` while the simulation is executing. Then you need to set the fixed frame as "map" and include a visualization TF object. rviz should start plotting two points relative to the fixed frame map.


![rviz_car](/assets/rviz_car.png)

*rviz simulating the car as a point*

![rviz_obs](/assets/rviz_obs.png)

*rviz simulating the obstacle as a point*

![rviz_both](/assets/rviz_both.png)

*Both the vehicles are being displayed simultaneously*



## Conclusions



Our project was designe as modular as possible. There are 4 `.cpp` files that implement the nodes. Two of those once built are executed two times (the tf executable and the encoder).
This modularity helped under the maintainability and debugging perspective, as its quite easy to add features and debug them since they have their own executable.

It is also interesting in our opinion to point out that this design is strongly independent from the situation, hence it would be possible to repurpose this software to compute distance between two sources, as long as the input messages belong to a navsat topic. The only needed modification is to change the input's topic name. However, we would like to point out that for the sake of simplicity we hardcoded a couple of arguments inside one or two functions, mainly names of topics  that are used from the nodes to interact, so any change except the input's topic in the launcher's args fields may result in a broken or not working simulation.

In regards of testing, we found out after multiple executions that the first ~100 seconds of the bag aren't useful to the simulation, because the satellite data from the obstacle is not recorded.
This also happens near the last minute or so of the bag. We avoided testing them, as the message filter would discard all the packets, so we skipped them launching
`rosbag play -s 100 project.bag`

The filtering policy gave us quite some trouble, as it seems that varying the `queue_size` param introduce a remarkable error in the distance computation. This is due to the fact that the ApproximateTimeFilter may be associating messages that are quite far from each other temporally, so the distance is computed using the wrong coordinates. For this situation where real-time data is fundamental, all the `queue_size` params are set to 1.


## Disclaimer

Our software is an educational project, based on the works of our professors. The software is provided AS IS, and will not be supported, updated or fixed in the future. If you have any question, you can contact us via email linked to our profiles, but we cannot guarantee any response.


**Lorenzo Gadolini** ---> *[@TehLowLow](https://github.com/TehLowLow)*.

**Davide Lorenzi** --->   *[@DavideTommy](https://github.com/DavideTommy)*.


*Politecnico di Milano*
