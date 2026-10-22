# Secure 3-Tier Web Application on AWS

A cloud and DevOps learning project focused on deploying a Django web application on AWS, connecting a managed MySQL database, configuring cloud networking, and practising deployment automation and Auto Scaling.

> **Project status:** AWS resources have been deleted after testing to control costs. The application is not currently live.

## Project Overview

This project demonstrates practical experience with AWS infrastructure, Linux server administration, Django deployment, database connectivity, CI/CD workflows, monitoring, and cloud cost management.

The application was deployed on an Ubuntu EC2 instance using Nginx and Gunicorn, with Amazon RDS for MySQL database storage. AWS networking and security configurations were used to support communication between the application and database.

## Architecture

![Secure 3-Tier Web Application on AWS Architecture](docs/architecture.png)

**Note:** The diagram represents the project setup and components tested during development. The final implementation used a single EC2 application server and a Single-AZ RDS database. The ALB and Auto Scaling components were configured and tested separately and have since been removed.

## Technologies Used

| Technology | Purpose |
|---|---|
| AWS EC2 | Hosted the Django application on Ubuntu Linux |
| Amazon RDS | Managed MySQL database |
| Amazon VPC | Network isolation and infrastructure networking |
| Public and private subnets | Network segmentation |
| Internet Gateway | Internet connectivity for the public network |
| Route tables | Controlled network routing |
| Security Groups | Controlled inbound and outbound network traffic |
| IAM | AWS permissions and access management |
| Nginx | Web server and reverse proxy |
| Gunicorn | Served the Django application |
| Python and Django | Backend application |
| MySQL | Relational database |
| Git and GitHub | Source control and code hosting |
| GitHub Actions | CI/CD workflow automation |
| AWS Systems Manager (SSM) | Remote command and deployment operations |
| Amazon CloudWatch | Monitoring and scaling-related alarms |
| Application Load Balancer (ALB) | Load balancing configuration and testing |
| EC2 Auto Scaling | Automatic EC2 capacity scaling configuration and testing |
| DuckDNS | Domain name used to access the application |
| Docker | Containerization experiment |

## Key Features and Practical Work

- Deployed a Django application on an Ubuntu EC2 server.
- Configured Nginx and Gunicorn for application serving.
- Connected the Django application to an Amazon RDS MySQL database.
- Configured a custom VPC, public and private subnets, route tables, an Internet Gateway, and Security Groups.
- Managed project code using Git and GitHub.
- Worked with GitHub Actions workflows for CI/CD and deployment automation.
- Used AWS Systems Manager for remote command execution and deployment-related operations.
- Configured and tested an Application Load Balancer and target group.
- Tested EC2 Auto Scaling, including scaling from one instance to two and back to one.
- Configured CloudWatch alarms for monitoring and scaling-related activities.
- Investigated AWS service costs and deleted project resources after testing.

## Application Deployment

The application deployment involved the following steps:

1. Set up the AWS networking environment.
2. Launched an Ubuntu EC2 instance.
3. Installed and configured the application runtime.
4. Deployed the Django application.
5. Configured Nginx and Gunicorn.
6. Connected the application to the MySQL database hosted on Amazon RDS.
7. Configured domain access through DuckDNS.
8. Tested application access and database operations.
9. Worked on automating deployment using GitHub Actions and AWS Systems Manager.

## DevOps Workflow

The project included source control and deployment automation using GitHub and GitHub Actions.

- **Git:** Version control.
- **GitHub:** Remote repository and code hosting.
- **GitHub Actions:** Workflow automation and deployment-related jobs.
- **AWS Systems Manager:** Remote commands on the EC2 environment.
- **Docker:** Containerization experiment during development.

The workflows were tested during development. Complete end-to-end deployment of every latest code change to all Auto Scaling instances was not independently verified.

## Auto Scaling and Monitoring

The EC2 Auto Scaling configuration was tested to understand how AWS adjusts application capacity.

- Tested scale-out from one EC2 instance to two instances.
- Tested scale-in from two instances back to one.
- Configured CloudWatch alarms associated with monitoring and scaling.
- Tested the load balancer and target group configuration.

These tests provided practical experience with EC2 capacity management, health checks, monitoring, and troubleshooting.

## Security and Networking

The project included the following security and networking configurations:

- Custom VPC for project networking.
- Public and private subnet configuration.
- Route tables and Internet Gateway.
- Security Groups for controlling network access.
- IAM permissions for AWS operations.
- A managed RDS database connected to the application.

These configurations were part of a learning project and should not be interpreted as a complete production security audit.

## Project Screenshots

Screenshots can be added to the `docs/screenshots/` directory in this repository.

Suggested screenshots include:

- AWS VPC and subnet configuration
- Route tables and Internet Gateway
- EC2 instance and application dashboard
- RDS MySQL configuration
- GitHub Actions workflow results
- Auto Scaling activity and instance changes
- CloudWatch alarms
- Application access through DuckDNS

Only include genuine screenshots of resources and results that were actually configured or tested.

## Repository Structure

The repository contains the Django application and its deployment-related files. The exact structure may vary based on the latest committed version.

```text
secure-3-tier-web-application/
├── config/
├── core/
├── manage.py
├── requirements.txt
├── .gitignore
├── .github/
│   └── workflows/
└── docs/
    ├── architecture.png
    └── screenshots/
```

The `docs/` paths shown above are suggested documentation locations. Create these folders and add the corresponding files if they are not already present.

## Cost Management

AWS resources were deleted after testing to avoid unnecessary ongoing costs.

The cleanup included the project's EC2 and database resources, load balancer, Auto Scaling resources, monitoring alarms, associated AMIs and snapshots, and the custom VPC networking resources.

The application is therefore **not currently running on AWS**. Historical AWS usage may still appear in billing reports, even after resources have been removed.

## What I Learned

- Deploying a Django application on Linux.
- Configuring Nginx and Gunicorn.
- Connecting Django to a managed MySQL database.
- Understanding AWS VPC networking and Security Groups.
- Managing application code using Git and GitHub.
- Working with GitHub Actions and AWS Systems Manager.
- Configuring and testing EC2 Auto Scaling.
- Using CloudWatch alarms for monitoring.
- Troubleshooting deployment and networking issues.
- Understanding AWS billing, credits, and resource cleanup.

## Future Improvements

Potential future improvements include:

- Completing and validating infrastructure deployment with Terraform.
- Implementing and verifying separate web and application tiers.
- Testing a fully redundant Multi-AZ architecture.
- Strengthening secrets management and deployment security.
- Improving automated deployment validation and health checks.

These are future improvements and are not claimed as completed features.

## Author

**Aman Yadav**

Cloud and DevOps Learning Project

**Disclaimer:** This project was developed for learning and practical demonstration. It is not presented as a production-ready, fully redundant deployment.
