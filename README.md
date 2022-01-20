# Chef deployment repository for ROS build farm

## Pre-requisites

* [Chef Infra] or [Cinc Client] v15
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
