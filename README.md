This project demonstrates the deployment of a personal portfolio website on Amazon Web Services (AWS) using Terraform Infrastructure as Code (IaC). The infrastructure is fully automated, provisioning an EC2 instance, configuring network security, installing and configuring Nginx, and deploying website content directly from a GitHub repository during instance initialization.

The objective of this project was to gain hands-on experience with cloud infrastructure provisioning, automation, Linux administration, web hosting, and troubleshooting real-world deployment challenges.

Technologies and Tools Used

Cloud Platform
- Amazon Web Services (AWS)

AWS Services
- Amazon EC2
- AWS IAM
- AWS Security Groups

Infrastructure as Code
- Terraform

Development Tools
- Visual Studio Code
- Git
- GitHub

Operating System
- Ubuntu Server

Web Server
- Nginx

Scripting
- Bash Shell Scripting

Lessons Learned

Some examples:

- Terraform state management
- IAM permissions troubleshooting
- Security Group configuration
- User-data automation
- GitHub content deployment
- Nginx configuration


Problems Encountered and Resolutions


Issue 1: Missing AWS Credentials
Cause: Terraform could not authenticate with AWS.
Resolution: Configured AWS credentials locally using AWS configure


Issue 2: Insufficient IAM Permissions
Error: UnauthorizedOperation
Cause: IAM user lacked permissions to create Security Groups.
Resolution: Updated IAM permissions to allow EC2 instance management, Security Group creation and Related networking actions


Issue 3: Invalid Security Group Protocol
Error: Invalid value 'http' for IP protocol
Cause: Terraform Security Group protocol was incorrectly defined.
Resolution: Changed a protocol from "http" to protocol = "tcp"


Issue 4: Website Displayed Default Nginx Page
Problem: Nginx showed: Welcome to nginx! instead of the portfolio website.
Cause: The default Nginx page was not removed and the custom page was not successfully deployed.
Resolution: Updated user-data script and downloaded website files directly from GitHub.

Issue 5: Incorrect GitHub Raw URL
Cause: Used an incorrect GitHub raw content URL.
Resolution: Corrected URL format and verified file accessibility.


Key Learning Outcomes
- Provisioning infrastructure using Terraform
- Managing AWS resources securely
- Configuring IAM permissions
- Deploying applications automatically using user-data
- Integrating GitHub with cloud deployments
- Troubleshooting cloud infrastructure issues
- Understanding the relationship between networking, security, and application deployment


Future Improvements

Planned enhancements (Some of these are not free tier, but I will only be trying out free tier services for personal projects):
- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- HTTPS using ACM certificates
- Route 53 custom domain
- CloudWatch monitoring
- Terraform modules
- Multi-environment deployments (Dev / Staging / Production)
- CI/CD using GitHub Actions
