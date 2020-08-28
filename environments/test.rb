name 'test'
description 'Test deployment environment'
default_attributes {
  ros_buildfarm: {
    jenkins_url: "http://100.21.122.128/",
    agent: {
      username: 'admin',
      password: 'this is a test',
    }
    ssh_publisher: {
      repo_hostname: 'repositories.test.ros2.org',
    }
  }
}


