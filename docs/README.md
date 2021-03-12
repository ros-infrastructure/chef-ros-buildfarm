# ROS build farm deployment

# Deployment procedure

A broad overview of the deployment procedure.

1. Duplicate this repository.
   Since the repository will be populated with production secrets it is not recommended to use GitHub's "fork" feature.
   Instead you can follow GitHub's [duplicating a repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/duplicating-a-repository) guide.
2. [Customize repository configuration](./configuration.md).
   Most configurable attributes have defaults which will work for common deployments but there are a number of secrets that must be generated which are specific to each deployment.
3. [Provision hardware infrastructure](./hardware.md).
4. [Run deployment scripts on hardware infrastructure](./deployment-scripts.md).
5. Prepare [ros_buildfarm configuration](https://github.com/ros-infrastructure/ros_buildfarm/blob/master/doc/basic_configuration.rst).
