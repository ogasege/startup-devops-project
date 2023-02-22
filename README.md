## Description
This is the repository containing the files required to automate the creation of the infrastructure of the startup using terraform.

## Project Requirements
The infrastructure includes 4 web servers and 2 databases. The requirements are:
- High availability
- Unique naming of each instance
- Installation of apache webserver on the instances

## Architecture diagram
To meet the requirements, the 4 web servers will be created in 2 public subnets in 2 different 
availability zones while the database instances will be created in 2 private subnets in 2 availabilty zones as the web servers. 

Here's the architecture diagram:

![Architectural Diagram for Startup)](https://user-images.githubusercontent.com/87014766/220373865-24821c92-9e4d-46a1-b97b-117199038347.png)
