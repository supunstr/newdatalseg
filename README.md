
## _Build Drupal WebSite_

![Capture](https://user-images.githubusercontent.com/42246100/126301830-2364614a-f35c-43c2-91af-62b3fa5f1144.PNG)

## Instructions

Before you RUN the main.tf below steps you need to follow,
- Create key name test
- Create own image using pre-image-input file base on the rhel8/7 server.
- Then update the Image ID on main.tf file.

You can user below commands to built this application

```sh
git clone https://github.com/supunstr/newdatalseg.git
Terraform init 
Terraform plan
Terraform apply 
```
## Note
In here I'm not use varialble files. I'll update it in future

terraform build output 

```sh
PS C:\Users\supun\OneDrive\Desktop\lseg\newdatalseg> terraform.exe init 

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installed hashicorp/aws v3.50.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\Users\supun\OneDrive\Desktop\lseg\newdatalseg> terraform.exe plan 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_autoscaling_attachment.prod_web will be created
  + resource "aws_autoscaling_attachment" "prod_web" {
      + autoscaling_group_name = (known after apply)
      + elb                    = (known after apply)
      + id                     = (known after apply)
    }

  # aws_autoscaling_group.prod_group will be created
  + resource "aws_autoscaling_group" "prod_group" {
      + arn                       = (known after apply)
      + availability_zones        = (known after apply)
      + default_cooldown          = (known after apply)
      + desired_capacity          = 2
      + force_delete              = false
      + force_delete_warm_pool    = false
      + health_check_grace_period = 300
      + health_check_type         = (known after apply)
      + id                        = (known after apply)
      + max_size                  = 3
      + metrics_granularity       = "1Minute"
      + min_size                  = 1
      + name                      = (known after apply)
      + name_prefix               = (known after apply)
      + protect_from_scale_in     = false
      + service_linked_role_arn   = (known after apply)
      + vpc_zone_identifier       = (known after apply)
      + wait_for_capacity_timeout = "10m"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = "$Latest"
        }
    }

  # aws_db_instance.default will be created
  + resource "aws_db_instance" "default" {
      + address                               = (known after apply)
      + allocated_storage                     = 10
      + apply_immediately                     = (known after apply)
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_subnet_group_name                  = (known after apply)
      + delete_automated_backups              = true
      + endpoint                              = (known after apply)
      + engine                                = "mysql"
      + engine_version                        = "8.0.23"
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = (known after apply)
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t2.micro"
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + maintenance_window                    = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = (known after apply)
      + name                                  = "database1"
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = (known after apply)
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_type                          = (known after apply)
      + tags_all                              = (known after apply)
      + timezone                              = (known after apply)
      + username                              = "admin"
      + vpc_security_group_ids                = (known after apply)
    }

  # aws_default_subnet.default_az1 will be created
  + resource "aws_default_subnet" "default_az1" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = "us-east-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name" = "prod_subnet"
        }
      + tags_all                        = {
          + "Name" = "prod_subnet"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_default_subnet.default_az2 will be created
  + resource "aws_default_subnet" "default_az2" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = "us-east-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name" = "prod_subnet"
        }
      + tags_all                        = {
          + "Name" = "prod_subnet"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_default_vpc.default will be created
  + resource "aws_default_vpc" "default" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = (known after apply)
      + cidr_block                       = (known after apply)
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = (known after apply)
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = (known after apply)
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags_all                         = (known after apply)
    }

  # aws_elb.prod_web_elb will be created
  + resource "aws_elb" "prod_web_elb" {
      + arn                         = (known after apply)
      + availability_zones          = (known after apply)
      + connection_draining         = false
      + connection_draining_timeout = 300
      + cross_zone_load_balancing   = true
      + dns_name                    = (known after apply)
      + id                          = (known after apply)
      + idle_timeout                = 60
      + instances                   = (known after apply)
      + internal                    = (known after apply)
      + name                        = "prod-web-elb"
      + security_groups             = (known after apply)
      + source_security_group       = (known after apply)
      + source_security_group_id    = (known after apply)
      + subnets                     = (known after apply)
      + tags                        = {
          + "Name" = "production_ELB"
        }
      + tags_all                    = {
          + "Name" = "production_ELB"
        }
      + zone_id                     = (known after apply)

      + health_check {
          + healthy_threshold   = (known after apply)
          + interval            = (known after apply)
          + target              = (known after apply)
          + timeout             = (known after apply)
          + unhealthy_threshold = (known after apply)
        }

      + listener {
          + instance_port     = 80
          + instance_protocol = "http"
          + lb_port           = 80
          + lb_protocol       = "http"
        }
    }

  # aws_iam_instance_profile.test_profile will be created
  + resource "aws_iam_instance_profile" "test_profile" {
      + arn         = (known after apply)
      + create_date = (known after apply)
      + id          = (known after apply)
      + name        = "test_profile"
      + path        = "/"
      + role        = "test_role"
      + tags_all    = (known after apply)
      + unique_id   = (known after apply)
    }

  # aws_iam_role.test_role will be created
  + resource "aws_iam_role" "test_role" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = ""
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = "test_role"
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)

      + inline_policy {
          + name   = (known after apply)
          + policy = (known after apply)
        }
    }

  # aws_iam_role_policy.test_policy will be created
  + resource "aws_iam_role_policy" "test_policy" {
      + id     = (known after apply)
      + name   = "test_policy"
      + policy = jsonencode(
            {
              + Statement = [
                  + {
                      + Action   = "rds:Describe*"
                      + Effect   = "Allow"
                      + Resource = "*"
                      + Sid      = "AllowRDSDescribe"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + role   = (known after apply)
    }

  # aws_launch_template.prod_web_template will be created
  + resource "aws_launch_template" "prod_web_template" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + id                     = (known after apply)
      + image_id               = "ami-0c4dde37857acb780"
      + instance_type          = "t2.micro"
      + key_name               = "test"
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "prod-web-template"
      + tags                   = {
          + "Name" = "production"
        }
      + tags_all               = {
          + "Name" = "production"
        }
      + user_data              = "IyEvYmluL2Jhc2ggLXYNCg0Kc3VkbyB5dW0gaW5zdGFsbCAteSBnaXQgDQoNCmF3cyBjb25maWd1cmUgc2V0IGRlZmF1bHQucmVnaW9uIHVzLWVhc3QtMQ0KYT1gYXdzIHJkcyBkZXNjcmliZS1kYi1pbnN0YW5jZXMgIC0tcXVlcnkgJ0RCSW5zdGFuY2VzWypdLlsiRW5kcG9pbnQiLiJBZGRyZXNzIl0nIHwgZ3JlcCByZHNgDQpuZXdkYj1gZWNobyAkYSB8IHNlZCAncy9eLlwoLipcKS4kL1wxLydgDQoNCmZpbmFsPWBlY2hvICInJG5ld2RiJywiYA0KDQpnaXQgY2xvbmUgaHR0cHM6Ly9naXRodWIuY29tL3N1cHVuc3RyL25ld2RhdGFsc2VnLmdpdA0KDQpzdWRvIGNwIC1SIG5ld2RhdGFsc2VnL2h0bWwgL3Zhci93d3cvDQpvbGRkYj1gY2F0IC92YXIvd3d3L2h0bWwvZHJ1cGFsL3NpdGVzL2RlZmF1bHQvc2V0dGluZ3MucGhwIHwgZ3JlcCByZHMuYW1hem9uYXdzLmNvbSB8IGF3ayAne3ByaW50ICQzfSdgDQpzdWRvIHNlZCAtaSAicy8kb2xkZGIvJGZpbmFsL2ciIC92YXIvd3d3L2h0bWwvZHJ1cGFsL3NpdGVzL2RlZmF1bHQvc2V0dGluZ3MucGhwDQoNCnN1ZG8gY3AgbmV3ZGF0YWxzZWcvZHJ1cGFsLmNvbmYgL2V0Yy9odHRwZC9jb25mLmQvZHJ1cGFsLmNvbmYNCnN1ZG8gY2hvd24gLVIgYXBhY2hlOmFwYWNoZSAgL3Zhci93d3cvaHRtbC8NCg0Kc3VkbyBzZW1hbmFnZSBmY29udGV4dCAtYSAtdCBodHRwZF9zeXNfcndfY29udGVudF90ICIvdmFyL3d3dy9odG1sL2RydXBhbCgvLiopPyINCnN1ZG8gc2VtYW5hZ2UgZmNvbnRleHQgLWEgLXQgaHR0cGRfc3lzX3J3X2NvbnRlbnRfdCAnL3Zhci93d3cvaHRtbC9kcnVwYWwvc2l0ZXMvZGVmYXVsdC9zZXR0aW5ncy5waHAnDQpzdWRvIHNlbWFuYWdlIGZjb250ZXh0IC1hIC10IGh0dHBkX3N5c19yd19jb250ZW50X3QgJy92YXIvd3d3L2h0bWwvZHJ1cGFsL3NpdGVzL2RlZmF1bHQvZmlsZXMnDQpzdWRvIHJlc3RvcmVjb24gLVJ2IC92YXIvd3d3L2h0bWwvZHJ1cGFsDQpzdWRvIHJlc3RvcmVjb24gLXYgL3Zhci93d3cvaHRtbC9kcnVwYWwvc2l0ZXMvZGVmYXVsdC9zZXR0aW5ncy5waHANCnN1ZG8gcmVzdG9yZWNvbiAtUnYgL3Zhci93d3cvaHRtbC9kcnVwYWwvc2l0ZXMvZGVmYXVsdC9maWxlcw0Kc3VkbyBjaG93biAtUiBhcGFjaGU6YXBhY2hlICAvdmFyL3d3dy9odG1sL2RydXBhbA0KDQpzdWRvIHNldHNlYm9vbCBodHRwZF9jYW5fbmV0d29ya19jb25uZWN0X2RiIG9uDQoNCnN1ZG8gc3lzdGVtY3RsIHJlc3RhcnQgaHR0cGQNCg0KDQpteXNxbCAtdSBhZG1pbiAtaCAkbmV3ZGIgLXBBZG1pbjEyMzQNCg0KDQpDUkVBVEUgREFUQUJBU0UgZHJ1cGFsIENIQVJBQ1RFUiBTRVQgdXRmOG1iNCBDT0xMQVRFIHV0ZjhtYjRfZ2VuZXJhbF9jaTsNCkNSRUFURSBVU0VSICdkcnVwYWwnQCclJyBJREVOVElGSUVEIEJZICdBZG1pbjEyMzQnOw0KR1JBTlQgQUxMIFBSSVZJTEVHRVMgT04gZHJ1cGFsLiogVE8gJ2RydXBhbCdAJyUnOw0KRkxVU0ggUFJJVklMRUdFUzsNClFVSVQNCg0KbXlzcWwgLXUgYWRtaW4gLWggJG5ld2RiIC1wQWRtaW4xMjM0IGRydXBhbCA8IG5ld2RhdGFsc2VnL2JhY2t1cGZpbmFsLnNxbA0K"
      + vpc_security_group_ids = (known after apply)

      + iam_instance_profile {
          + arn = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }
    }

  # aws_security_group.prod_db will be created
  + resource "aws_security_group" "prod_db" {
      + arn                    = (known after apply)
      + description            = "Allow DB port inbound and from EC2"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = []
              + description      = ""
              + from_port        = 3306
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 3306
            },
        ]
      + name                   = "prod_db"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "production-DB"
        }
      + tags_all               = {
          + "Name" = "production-DB"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_security_group.prod_web will be created
  + resource "aws_security_group" "prod_web" {
      + arn                    = (known after apply)
      + description            = "Allow http and https ports inbound and everything outbound"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + name                   = "prod_web"
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "production-web"
        }
      + tags_all               = {
          + "Name" = "production-web"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 13 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
PS C:\Users\supun\OneDrive\Desktop\lseg\newdatalseg>
PS C:\Users\supun\OneDrive\Desktop\lseg\newdatalseg> terraform.exe apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_autoscaling_attachment.prod_web will be created
  + resource "aws_autoscaling_attachment" "prod_web" {
      + autoscaling_group_name = (known after apply)
      + elb                    = (known after apply)
      + id                     = (known after apply)
    }

  # aws_autoscaling_group.prod_group will be created
  + resource "aws_autoscaling_group" "prod_group" {
      + arn                       = (known after apply)
      + availability_zones        = (known after apply)
      + default_cooldown          = (known after apply)
      + desired_capacity          = 2
      + force_delete              = false
      + force_delete_warm_pool    = false
      + health_check_grace_period = 300
      + health_check_type         = (known after apply)
      + id                        = (known after apply)
      + max_size                  = 3
      + metrics_granularity       = "1Minute"
      + min_size                  = 1
      + name                      = (known after apply)
      + name_prefix               = (known after apply)
      + protect_from_scale_in     = false
      + service_linked_role_arn   = (known after apply)
      + vpc_zone_identifier       = (known after apply)
      + wait_for_capacity_timeout = "10m"

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = "$Latest"
        }
    }

  # aws_db_instance.default will be created
  + resource "aws_db_instance" "default" {
      + address                               = (known after apply)
      + allocated_storage                     = 10
      + apply_immediately                     = (known after apply)
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_subnet_group_name                  = (known after apply)
      + delete_automated_backups              = true
      + endpoint                              = (known after apply)
      + engine                                = "mysql"
      + engine_version                        = "8.0.23"
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = (known after apply)
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t2.micro"
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + maintenance_window                    = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = (known after apply)
      + name                                  = "database1"
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = (known after apply)
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_type                          = (known after apply)
      + tags_all                              = (known after apply)
      + timezone                              = (known after apply)
      + username                              = "admin"
      + vpc_security_group_ids                = (known after apply)
    }

  # aws_default_subnet.default_az1 will be created
  + resource "aws_default_subnet" "default_az1" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = "us-east-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name" = "prod_subnet"
        }
      + tags_all                        = {
          + "Name" = "prod_subnet"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_default_subnet.default_az2 will be created
  + resource "aws_default_subnet" "default_az2" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = "us-east-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name" = "prod_subnet"
        }
      + tags_all                        = {
          + "Name" = "prod_subnet"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_default_vpc.default will be created
  + resource "aws_default_vpc" "default" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = (known after apply)
      + cidr_block                       = (known after apply)
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = (known after apply)
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = (known after apply)
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags_all                         = (known after apply)
    }

  # aws_elb.prod_web_elb will be created
  + resource "aws_elb" "prod_web_elb" {
      + arn                         = (known after apply)
      + availability_zones          = (known after apply)
      + connection_draining         = false
      + connection_draining_timeout = 300
      + cross_zone_load_balancing   = true
      + dns_name                    = (known after apply)
      + id                          = (known after apply)
      + idle_timeout                = 60
      + instances                   = (known after apply)
      + internal                    = (known after apply)
      + name                        = "prod-web-elb"
      + security_groups             = (known after apply)
      + source_security_group       = (known after apply)
      + source_security_group_id    = (known after apply)
      + subnets                     = (known after apply)
      + tags                        = {
          + "Name" = "production_ELB"
        }
      + tags_all                    = {
          + "Name" = "production_ELB"
        }
      + zone_id                     = (known after apply)

      + health_check {
          + healthy_threshold   = (known after apply)
          + interval            = (known after apply)
          + target              = (known after apply)
          + timeout             = (known after apply)
          + unhealthy_threshold = (known after apply)
        }

      + listener {
          + instance_port     = 80
          + instance_protocol = "http"
          + lb_port           = 80
          + lb_protocol       = "http"
        }
    }

  # aws_iam_instance_profile.test_profile will be created
  + resource "aws_iam_instance_profile" "test_profile" {
      + arn         = (known after apply)
      + create_date = (known after apply)
      + id          = (known after apply)
      + name        = "test_profile"
      + path        = "/"
      + role        = "test_role"
      + tags_all    = (known after apply)
      + unique_id   = (known after apply)
    }

  # aws_iam_role.test_role will be created
  + resource "aws_iam_role" "test_role" {
      + arn                   = (known after apply)
      + assume_role_policy    = jsonencode(
            {
              + Statement = [
                  + {
                      + Action    = "sts:AssumeRole"
                      + Effect    = "Allow"
                      + Principal = {
                          + Service = "ec2.amazonaws.com"
                        }
                      + Sid       = ""
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + create_date           = (known after apply)
      + force_detach_policies = false
      + id                    = (known after apply)
      + managed_policy_arns   = (known after apply)
      + max_session_duration  = 3600
      + name                  = "test_role"
      + path                  = "/"
      + tags_all              = (known after apply)
      + unique_id             = (known after apply)

      + inline_policy {
          + name   = (known after apply)
          + policy = (known after apply)
        }
    }

  # aws_iam_role_policy.test_policy will be created
  + resource "aws_iam_role_policy" "test_policy" {
      + id     = (known after apply)
      + name   = "test_policy"
      + policy = jsonencode(
            {
              + Statement = [
                  + {
                      + Action   = "rds:Describe*"
                      + Effect   = "Allow"
                      + Resource = "*"
                      + Sid      = "AllowRDSDescribe"
                    },
                ]
              + Version   = "2012-10-17"
            }
        )
      + role   = (known after apply)
    }

  # aws_launch_template.prod_web_template will be created
  + resource "aws_launch_template" "prod_web_template" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + id                     = (known after apply)
      + image_id               = "ami-0d6eae25fcdb66e19"
      + instance_type          = "t2.micro"
      + key_name               = "test"
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "prod-web-template"
      + tags                   = {
          + "Name" = "production"
        }
      + tags_all               = {
          + "Name" = "production"
        }
      + user_data              = "IyEvYmluL2Jhc2ggLXYNCg0Kc3VkbyB5dW0gaW5zdGFsbCAteSBnaXQgDQoNCmF3cyBjb25maWd1cmUgc2V0IGRlZmF1bHQucmVnaW9uIHVzLWVhc3QtMQ0KYT1gYXdzIHJkcyBkZXNjcmliZS1kYi1pbnN0YW5jZXMgIC0tcXVlcnkgJ0RCSW5zdGFuY2VzWypdLlsiRW5kcG9pbnQiLiJBZGRyZXNzIl0nIHwgZ3JlcCByZHNgDQpuZXdkYj1gZWNobyAkYSB8IHNlZCAncy9eLlwoLipcKS4kL1wxLydgDQoNCmZpbmFsPWBlY2hvICInJG5ld2RiJywiYA0KDQpnaXQgY2xvbmUgaHR0cHM6Ly9naXRodWIuY29tL3N1cHVuc3RyL25ld2RhdGFsc2VnLmdpdA0KDQpzdWRvIGNwIC1SIG5ld2RhdGFsc2VnL2h0bWwgL3Zhci93d3cvDQpvbGRkYj1gY2F0IC92YXIvd3d3L2h0bWwvZHJ1cGFsL3NpdGVzL2RlZmF1bHQvc2V0dGluZ3MucGhwIHwgZ3JlcCByZHMuYW1hem9uYXdzLmNvbSB8IGF3ayAne3ByaW50ICQzfSdgDQpzdWRvIHNlZCAtaSAicy8kb2xkZGIvJGZpbmFsL2ciIC92YXIvd3d3L2h0bWwvZHJ1cGFsL3NpdGVzL2RlZmF1bHQvc2V0dGluZ3MucGhwDQoNCnN1ZG8gY3AgbmV3ZGF0YWxzZWcvZHJ1cGFsLmNvbmYgL2V0Yy9odHRwZC9jb25mLmQvZHJ1cGFsLmNvbmYNCnN1ZG8gY2hvd24gLVIgYXBhY2hlOmFwYWNoZSAgL3Zhci93d3cvaHRtbC8NCg0Kc3VkbyBzZW1hbmFnZSBmY29udGV4dCAtYSAtdCBodHRwZF9zeXNfcndfY29udGVudF90ICIvdmFyL3d3dy9odG1sL2RydXBhbCgvLiopPyINCnN1ZG8gc2VtYW5hZ2UgZmNvbnRleHQgLWEgLXQgaHR0cGRfc3lzX3J3X2NvbnRlbnRfdCAnL3Zhci93d3cvaHRtbC9kcnVwYWwvc2l0ZXMvZGVmYXVsdC9zZXR0aW5ncy5waHAnDQpzdWRvIHNlbWFuYWdlIGZjb250ZXh0IC1hIC10IGh0dHBkX3N5c19yd19jb250ZW50X3QgJy92YXIvd3d3L2h0bWwvZHJ1cGFsL3NpdGVzL2RlZmF1bHQvZmlsZXMnDQpzdWRvIHJlc3RvcmVjb24gLVJ2IC92YXIvd3d3L2h0bWwvZHJ1cGFsDQpzdWRvIHJlc3RvcmVjb24gLXYgL3Zhci93d3cvaHRtbC9kcnVwYWwvc2l0ZXMvZGVmYXVsdC9zZXR0aW5ncy5waHANCnN1ZG8gcmVzdG9yZWNvbiAtUnYgL3Zhci93d3cvaHRtbC9kcnVwYWwvc2l0ZXMvZGVmYXVsdC9maWxlcw0Kc3VkbyBjaG93biAtUiBhcGFjaGU6YXBhY2hlICAvdmFyL3d3dy9odG1sL2RydXBhbA0KDQpzdWRvIHNldHNlYm9vbCBodHRwZF9jYW5fbmV0d29ya19jb25uZWN0X2RiIG9uDQoNCnN1ZG8gc3lzdGVtY3RsIHJlc3RhcnQgaHR0cGQNCg0KDQpteXNxbCAtdSBhZG1pbiAtaCAkbmV3ZGIgLXBBZG1pbjEyMzQNCg0KDQpDUkVBVEUgREFUQUJBU0UgZHJ1cGFsIENIQVJBQ1RFUiBTRVQgdXRmOG1iNCBDT0xMQVRFIHV0ZjhtYjRfZ2VuZXJhbF9jaTsNCkNSRUFURSBVU0VSICdkcnVwYWwnQCclJyBJREVOVElGSUVEIEJZICdBZG1pbjEyMzQnOw0KR1JBTlQgQUxMIFBSSVZJTEVHRVMgT04gZHJ1cGFsLiogVE8gJ2RydXBhbCdAJyUnOw0KRkxVU0ggUFJJVklMRUdFUzsNClFVSVQNCg0KbXlzcWwgLXUgYWRtaW4gLWggJG5ld2RiIC1wQWRtaW4xMjM0IGRydXBhbCA8IG5ld2RhdGFsc2VnL2JhY2t1cGZpbmFsLnNxbA0K"
      + vpc_security_group_ids = (known after apply)

      + iam_instance_profile {
          + arn = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }
    }

  # aws_security_group.prod_db will be created
  + resource "aws_security_group" "prod_db" {
      + arn                    = (known after apply)
      + description            = "Allow DB port inbound and from EC2"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = [
                  + "::/0",
                ]
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = []
              + description      = ""
              + from_port        = 3306
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 3306
            },
        ]
      + name                   = "prod_db"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "production-DB"
        }
      + tags_all               = {
          + "Name" = "production-DB"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_security_group.prod_web will be created
  + resource "aws_security_group" "prod_web" {
      + arn                    = (known after apply)
      + description            = "Allow http and https ports inbound and everything outbound"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + name                   = "prod_web"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name" = "production-web"
        }
      + tags_all               = {
          + "Name" = "production-web"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 13 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_iam_role.test_role: Creating...
aws_default_subnet.default_az1: Creating...
aws_default_subnet.default_az2: Creating...
aws_default_vpc.default: Creating...
aws_db_instance.default: Creating...
aws_security_group.prod_web: Creating...
aws_default_subnet.default_az1: Creation complete after 4s [id=subnet-0358b1d9cd74203cf]
aws_default_subnet.default_az2: Creation complete after 4s [id=subnet-0f2b8296aa171b4df]
aws_iam_role.test_role: Creation complete after 5s [id=test_role]
aws_iam_role_policy.test_policy: Creating...
aws_iam_instance_profile.test_profile: Creating...
aws_iam_role_policy.test_policy: Creation complete after 3s [id=test_role:test_policy]
aws_iam_instance_profile.test_profile: Creation complete after 4s [id=test_profile]
aws_default_vpc.default: Still creating... [10s elapsed]
aws_security_group.prod_web: Still creating... [10s elapsed]
aws_db_instance.default: Still creating... [10s elapsed]
aws_security_group.prod_web: Creation complete after 11s [id=sg-0eda0088209d8f332]
aws_elb.prod_web_elb: Creating...
aws_security_group.prod_db: Creating...
aws_default_vpc.default: Still creating... [20s elapsed]
aws_db_instance.default: Still creating... [20s elapsed]
aws_security_group.prod_db: Creation complete after 10s [id=sg-0a7598fbc0b0f8208]
aws_elb.prod_web_elb: Still creating... [10s elapsed]
aws_default_vpc.default: Creation complete after 25s [id=vpc-0ad855b40aa095004]
aws_elb.prod_web_elb: Creation complete after 19s [id=prod-web-elb]
aws_db_instance.default: Still creating... [31s elapsed]
aws_db_instance.default: Still creating... [41s elapsed]
aws_db_instance.default: Still creating... [51s elapsed]
aws_db_instance.default: Still creating... [1m1s elapsed]
aws_db_instance.default: Still creating... [1m11s elapsed]
aws_db_instance.default: Still creating... [1m21s elapsed]
aws_db_instance.default: Still creating... [1m31s elapsed]
aws_db_instance.default: Still creating... [1m41s elapsed]
aws_db_instance.default: Still creating... [1m51s elapsed]
aws_db_instance.default: Still creating... [2m1s elapsed]
aws_db_instance.default: Still creating... [2m11s elapsed]
aws_db_instance.default: Still creating... [2m21s elapsed]
aws_db_instance.default: Still creating... [2m31s elapsed]
aws_db_instance.default: Still creating... [2m41s elapsed]
aws_db_instance.default: Still creating... [2m51s elapsed]
aws_db_instance.default: Still creating... [3m1s elapsed]
aws_db_instance.default: Still creating... [3m11s elapsed]
aws_db_instance.default: Still creating... [3m21s elapsed]
aws_db_instance.default: Still creating... [3m31s elapsed]
aws_db_instance.default: Still creating... [3m41s elapsed]
aws_db_instance.default: Still creating... [3m51s elapsed]
aws_db_instance.default: Still creating... [4m1s elapsed]
aws_db_instance.default: Still creating... [4m11s elapsed]
aws_db_instance.default: Still creating... [4m21s elapsed]
aws_db_instance.default: Still creating... [4m31s elapsed]
aws_launch_template.prod_web_template: Creation complete after 4s [id=lt-0121ff1e99876a931]
aws_autoscaling_group.prod_group: Creating...
aws_autoscaling_group.prod_group: Still creating... [10s elapsed]
aws_autoscaling_group.prod_group: Still creating... [20s elapsed]
aws_autoscaling_group.prod_group: Still creating... [30s elapsed]
aws_autoscaling_group.prod_group: Still creating... [40s elapsed]
aws_autoscaling_group.prod_group: Still creating... [50s elapsed]
aws_autoscaling_group.prod_group: Still creating... [1m0s elapsed]
aws_autoscaling_group.prod_group: Still creating... [1m10s elapsed]
aws_autoscaling_group.prod_group: Creation complete after 1m12s [id=terraform-20210720055709940400000004]
aws_autoscaling_attachment.prod_web: Creating...
aws_autoscaling_attachment.prod_web: Creation complete after 3s [id=terraform-20210720055709940400000004-20210720055823306400000005]

Apply complete! Resources: 13 added, 0 changed, 0 destroyed.
PS C:\Users\supun\OneDrive\Desktop\lseg\newdatalseg>
```
