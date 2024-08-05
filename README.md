# Devops_terraform

**Scenario: Create a Highly Available Three-Tier Architecture Using Terraform**
**Objective:**
Design and implement a highly available three-tier architecture using Terraform. The
architecture should include the following components:
• 2 Web Servers: These will handle incoming HTTP requests.
• 2 Application Servers: These will process the business logic.
• 1 Database Server: This will store the application data.

**Requirements:**

**1. Network Infrastructure:**
o Create a Virtual Private Cloud (VPC) with subnets for each tier (web, application,
database).
o Ensure subnets are spread across multiple Availability Zones for high availability.
o Set up necessary security groups and network ACLs to control traffic flow
between the tiers.

**3. Web Servers:**
o Deploy 2 web servers in the web tier.
o Use a Load Balancer to distribute traffic across the web servers.
o Ensure web servers are configured to serve static content or forward requests to
application servers.

**5. Application Servers:**
o Deploy 2 application servers in the application tier.
o Configure the application servers to handle business logic and communicate with
the database server.

**7. Database Server:**
o Deploy 1 highly available database server in the database tier.
o Configure the database for high availability and regular backups.

**9. High Availability and Fault Tolerance:**
o Ensure that all components are distributed across multiple Availability Zones.
o Implement auto-scaling for the web and application servers to handle varying
loads.
o Use Terraform modules and best practices to structure the configuration.

![image](https://github.com/user-attachments/assets/d1a0ef5b-64bd-4c09-b244-780485b770c6)
