name 'test'
description 'Test deployment environment'
default_attributes Hash[
  ros_buildfarm: {
    jenkins_url: "http://testbuild.rosbuild.ros2.org:8080/",
    agent: {
      username: 'admin',
      password: 'this is a test',
    },
    ssh_publisher: {
      repo_hostname: 'repositories.rosbuild.ros2.org',
    },
  }
]


