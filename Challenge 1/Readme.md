**Below is the stack being used.**

VPC

Internet gateway

4 Subnets (2 public and 2 private in 2 AZ's)

Create two Route tables (public for internet and private for the traffic through NAT Gateway)

Create NAT Gateway

ELB (Internet and the Internal Load balancer)

Auto Scaling group

Bastion Host
