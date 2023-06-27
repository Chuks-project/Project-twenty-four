cluster_name            = "tooling-app-eks"
iac_environment_tag     = "development"
name_prefix             = "victor-io-eks"
main_network_block      = "10.0.0.0/16"
subnet_prefix_extension = 4
zone_offset             = 8

# Ensure that these users already exist in AWS IAM. Another approach is that you can introduce an iam.tf file to manage users separately, get the data source and interpolate their ARN.
admin_users                    = ["Devops", "terraform"]
developer_users                = ["Devops", "terraform"]
asg_instance_types             = [ { instance_type = "t3.small" }, { instance_type = "t2.small" }, ]
autoscaling_minimum_size_by_az = 1
autoscaling_maximum_size_by_az = 10




# region = "eu-west-1"

# vpc_cidr = "172.16.0.0/16" 

# enable_dns_support = "true" 

# enable_dns_hostnames = "true"  

# enable_classiclink = "false" 

# enable_classiclink_dns_support = "false" 

# preferred_number_of_public_subnets = 2