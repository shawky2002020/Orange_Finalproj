# Orange Final
![Orange logo](https://github.com/user-attachments/assets/21bac1d4-ead6-48e6-b61e-967bd2b6149e)
 Project

# Web Application CI Pipeline with Docker and Jenkins

This project demonstrates a Continuous Integration (CI) pipeline that automates the deployment of a simple Python-based web application using Docker, Jenkins, and Ansible. The pipeline builds, pushes, and deploys the application to two virtual machines managed via Vagrant. The deployment is fully automated with Docker containerization and Ansible playbooks.

## Project Overview

The goal of this project is to create an automated CI/CD pipeline that integrates several tools to streamline the build and deployment process for a simple web application. The core components of the pipeline include:

1. **GitHub Repository**: The Python-based web application code is stored in a private GitHub repository.
2. **Docker**: The application is containerized using Docker, ensuring that it runs consistently across all environments.
3. **Jenkins**: Jenkins automates the build process by pulling the code from GitHub, building the Docker image, and pushing it to Docker Hub.
4. **Vagrant & VirtualBox**: Two VMs are provisioned using Vagrant with low specs (1 CPU, 512 MB of memory).
5. **Ansible**: An Ansible playbook is used to install Docker on the VMs, pull the Docker image from Docker Hub, and run the container on each machine.

## What I Built

- **GitHub Repository**: I set up a private repository to store the Python web application code.
  
- **Dockerfile**: I wrote a Dockerfile to containerize the Python web application, making it easy to deploy anywhere.

- **Vagrant Setup**: I created two virtual machines using Vagrant with minimal resource allocation for running the Docker containers.

- **Jenkins Pipeline**: I configured a Jenkins pipeline that automates the process of pulling code from GitHub, building the Docker image, and pushing it to Docker Hub.

- **Ansible Playbook**: I wrote an Ansible playbook that installs Docker on the VMs, pulls the Docker image from Docker Hub, and runs the container on both machines.

This CI/CD pipeline allows the application to be built, containerized, and deployed in a fully automated and repeatable manner.

## Key Features

- **Automated Docker Builds**: The Docker image is automatically built whenever changes are pushed to the GitHub repository.
- **Seamless Deployment**: The application is deployed to multiple VMs automatically using Ansible.
- **End-to-End Automation**: From code push to deployment, the entire process is automated, reducing manual intervention and ensuring consistency.

## Conclusion

This project integrates modern DevOps tools to provide an automated solution for building and deploying a simple web application. The CI pipeline helps maintain consistency across environments and simplifies the deployment process, making it easier to manage updates and rollbacks.

## Photos
![Docker_Hub](https://github.com/user-attachments/assets/7ed35fc2-67b2-43a0-8bd2-494a99300e0b)
![Jenkins](https://github.com/user-attachments/assets/93896fe5-c28b-4a6d-9e01-08af392f170c)



*This project was completed during my DevOps internship at Orange.*
