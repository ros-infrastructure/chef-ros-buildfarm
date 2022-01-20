# Example Chef deployment repository for ROS build farm

This repository provides documentation and a template for configuring an instance of the ROS build farm.
The ROS build farm is a cluster of several machines with different roles and required configuration.

Setting up a ROS build farm is only a requirement if:
* You wish to replicate the complete official ROS infrastructure for building binary packages or running Development or PR jobs.
* You wish to build your own customized ROS distribution using your own instance of the build farm.

You do not need to create your own build farm if:
* You wish to release ROS packages into official ROS distributions.
* You wish to replicate most specific individual jobs on the ROS build farm to reproduce problems on the official build farm.

This repository includes work-in-progress configuration and administration documentation.
<!-- It is recommended that first time build farm admins read the [ROS build farm overview documentation](#TODO) -->

* [Chef Infra] or [Cinc Client]
* Git
* Ubuntu 20.04

## Deployment

1. Create a solo.json file.
```bash
echo '{ "run_list": ["recipe[ros_buildarm::jenkins]"] }' > solo.json
```

2. Run chef-solo
```bash
chef-solo -c $(pwd)/.chef/solo.rb -E development -j $(pwd)/solo.json
```

Read the README file in each of the subdirectories for more information about what goes in those directories.

[Chef Infra]: https://www.chef.io/products/chef-infra
[Cinc Client]: https://cinc.sh/start/client/
