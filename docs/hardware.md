# Hardware provisioning

The ROS buildfarm can be provisioned on physical or virtual hardware.
Because the buildfarm itself utilizes [Docker](https://docker.com) it's not currently possible to run the buildfarm deployment itself in Docker or LXD containers.
Community work to support launching the build farm in containers would be welcome as long as it is not disruptive.

# Host/role requirements

## Jenkins
### Minimum requirements:
CPU: 2 cores / hardware threads
RAM: 16GB
Storage: 200GB

### Recommended for larger workloads matching build.ros.org / build.ros2.org:
CPU: 8 cores / hardware threads
RAM 30GB
Storage: 1500GB


## Repo
### Minimum requirements:
CPU: 2 cores / hardware threads
RAM: 4GB
Storage: 50G

### Recommended for larger workloads matching build.ros.org / build.ros2.org:
CPU: 4 cores / hardware threads
RAM: 8GB
Storage: 500GB


## Agent
### Requirements:
CPU: 4 cores / hardware threads
RAM: 8GB
Storage: 500GB

*NOTE* It may be possible to reduce the agent size however doing so has not been tested recently and reducing the number of [executors](#TODO) to the number of cores is recommended.
Some package builds may not be possible if there is less than 8GB of RAM available to the host.

## Running on AWS

For reference running on AWS EC2 instances the ROS buildfarm uses the following instance types:
* Jenkins: m5a.2xlarge
* Repo: t3a.large (with unlimited burst disabled)
* Agents: c5.xlarge and c5a.xlarge, arm agents are c6g.xlarge

