# Secure 3-Tier Web Application on AWS

A Cloud and DevOps learning project built to practise deploying a Django application on AWS, connecting a managed MySQL database, configuring networking and security controls, and testing deployment automation and EC2 Auto Scaling.

> **Current status:** The AWS resources used for this project were deleted after testing to control costs. The application is **not currently live on AWS**.

## Architecture

![Project architecture](docs/architecture.png)

**Architecture accuracy:** The diagram is a learning-project overview, not a claim that every component ran together in the final traffic path. The tested application used a single Ubuntu EC2 application server with Nginx, Gunicorn, and Django, connected to Amazon RDS for MySQL. RDS was configured as **Single-AZ**. DuckDNS was used for the hostname. The ALB, target group, Auto Scaling, and CloudWatch alarms were configured/tested separately and later removed.

## Technologies and Services

| Technology / Service | How it was used |
|---|---|
| Python and Django | Backend web application |
| Ubuntu Linux on Amazon EC2 | Hosted the application |
| Nginx | Web server / reverse proxy |
| Gunicorn | Django application server |
| Amazon RDS for MySQL | Managed database |
| Amazon VPC | Project network |
| Public and private subnets | Network segmentation |
| Internet Gateway and route tables | Network routing |
| Security Groups | Traffic access controls |
| IAM | AWS permissions and roles where configured |
| Git and GitHub | Source control and repository hosting |
| GitHub Actions | CI/CD workflow automation |
| Amazon CloudWatch | Monitoring and scaling-related alarms |
| Application Load Balancer and target group | Configured and tested, then deleted |
| EC2 Auto Scaling Group | Scaling behavior tested, then deleted |
| DuckDNS | Application hostname |
| Docker | Experimented with during development |
| Terraform | Configuration files/work in progress; full infrastructure deployment was not verified |

## What I Implemented and Tested

- Deployed the Django application on Ubuntu EC2.
- Configured Nginx and Gunicorn to serve the application.
- Connected Django to a MySQL database hosted on Amazon RDS.
- Configured a custom VPC, public/private subnets, route tables, an Internet Gateway, and Security Groups.
- Used Git and GitHub to manage and publish the source code.
- Worked on GitHub Actions workflows for deployment automation.
- Configured and tested an Application Load Balancer and target group.
- Tested EC2 Auto Scaling from one instance to two and back to one.
- Configured CloudWatch alarms related to monitoring/scaling.
- Reviewed AWS billing and removed project resources to control ongoing costs.

## Deployment Overview

1. Configure the AWS network and security rules.
2. Launch an Ubuntu EC2 instance.
3. Install the required Python/Django dependencies.
4. Configure Gunicorn and Nginx.
5. Configure the Amazon RDS MySQL database and connect the application.
6. Test the application and database operations.
7. Use GitHub Actions for deployment-related automation.
8. Test monitoring and Auto Scaling configurations.
9. Delete the AWS resources after testing to avoid unnecessary ongoing charges.

## CI/CD Notes

GitHub Actions workflows were run during development, and deployment automation was tested using AWS Systems Manager. Some workflow runs required troubleshooting. A successful workflow run proves that specific run succeeded; it does not by itself prove that every latest code change was deployed successfully to every Auto Scaling instance.

## Auto Scaling and Monitoring

The Auto Scaling configuration was tested by scaling from one EC2 instance to two and then back to one. CloudWatch alarms were configured for monitoring/scaling-related activity. These resources have since been deleted.

## Security and Networking

- Used a dedicated VPC for project networking.
- Configured subnet segmentation, route tables, and an Internet Gateway.
- Used Security Groups to control traffic.
- Connected the application to RDS rather than using a local database for the AWS deployment.
- Used IAM/SSM-related access configuration where applicable.

This was a learning project, not a full production security audit. Secrets, credentials, and account-specific identifiers should never be committed to the repository.

## Screenshots

The `screenshots/` folder contains screenshots from the project setup and testing. The following images are displayed directly in this README.

### AWS networking

**VPC overview**

![VPC overview](screenshots/02-vpc-overview.png)

**Public and private subnets**

![Public and private subnets](screenshots/03-public-private-subnets.png)

**Route tables**

![Route tables](screenshots/04-route-tables.png)

### Application hosting and database

**EC2 instances**

![EC2 instances](screenshots/06-ec2-instances.png)

**RDS MySQL database**

![RDS MySQL database](screenshots/09-rds-mysql-database.png)

**Application running during testing**

![Application running during testing](screenshots/10(b)-application-running.png)

### Load balancing and scaling tests

**Application Load Balancer**

![Load balancer details](screenshots/08-load-balancer-details.png)

**Auto Scaling Group**

![Auto Scaling Group](screenshots/07a-auto-scaling-group.png)

**Auto Scaling instance health**

![Auto Scaling instance health](screenshots/07b-asg-instance-health.png)

### Monitoring and DevOps

**CloudWatch monitoring**

![CloudWatch monitoring](screenshots/12(A)-cloudwatch-monitoring.png)

**GitHub repository**

![GitHub repository](screenshots/13-github-repository.png)

**Docker setup experiment**

![Docker setup](screenshots/14-docker-setup.png)

**GitHub Actions pipeline**

![GitHub Actions pipeline](screenshots/15-github-actions-pipeline.png)

**Terraform configuration files**

![Terraform configuration](screenshots/16-terraform-configuration.png)

> Screenshots show the state at the time they were captured. They do not mean these AWS resources are still active. Review every image before publishing and remove any image that contains private information.

## Cost Management

AWS resources were deleted after testing to reduce ongoing costs. The cleanup included the main EC2/RDS/load-balancing/Auto Scaling resources, monitoring alarms, project AMIs and snapshots, and the custom VPC and peering connection.

Historical usage may still appear in billing reports after resources are deleted. The AWS billing page showed $0.00 payable while eligible usage was covered by plan credits; this is different from having zero service usage.

## What I Learned

- Deploying Django on Linux.
- Configuring Nginx and Gunicorn.
- Connecting a web application to Amazon RDS for MySQL.
- Understanding AWS VPC networking and Security Groups.
- Using Git and GitHub.
- Working with GitHub Actions.
- Testing EC2 Auto Scaling and CloudWatch alarms.
- Troubleshooting deployment and networking problems.
- Reviewing AWS usage costs and cleaning up resources.

## Future Improvements

The following are potential improvements, not completed features:

- Finish and validate a full Terraform-based infrastructure deployment.
- Implement and verify independently deployed web and application tiers.
- Test a fully redundant Multi-AZ architecture.
- Improve automated deployment validation and secret management.

## Author

**Aman Yadav**  
Cloud and DevOps Learning Project

## Disclaimer

This is an educational project. It is not presented as a production-ready, fully redundant deployment. The AWS environment has been removed and the application is not currently live.
