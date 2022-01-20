# Pre-requisites

The physical or virtual build farm cluster hosts should be running Ubuntu 20.04 (Focal Fossa).
Git must be installed on the build farm hosts in order to fetch the initial deployment scripts and chef configuration.
Other Debian or Debian-derived operating systems or operating system versions may work but have not been tested.

Setting up a ROS build farm cluster will require the following software on your local workstation:
* Git
* SSH with a running ssh-agent
* A text editor

Your workstation must have root or sudo access to the build farm hosts via SSH.
The default deployment scripts will use a forwarded ssh-agent and git to fetch deployment and configuration files.
