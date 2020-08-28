name 'test'
description 'Test deployment environment'
default_attributes Hash[
  ros_buildfarm: {
    jenkins_url: "http://rosbuild.test.ros2.org/",
    agent: {
      username: 'admin',
      password: 'this is a test',
    },
    ssh_publisher: {
      repo_hostname: 'repositories.test.ros2.org',
    },
  }
]


