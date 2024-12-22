# Orange Final Task

# Web Application CI Pipeline with Docker and Jenkins

This project demonstrates a Continuous Integration (CI) pipeline that automates the deployment of a Python-based web application using Docker, Jenkins, and Ansible. The pipeline builds, pushes, and deploys the application to two virtual machines managed via Vagrant. The deployment is fully automated, leveraging Docker containerization and Ansible playbooks to ensure efficiency and consistency.

---

## Project Overview

The goal of this project is to create an automated CI/CD pipeline that integrates several tools to streamline the build and deployment process for a Python web application. The core components of the pipeline include:

1. **Docker**: Containerizes the application, ensuring consistent execution across all environments.
2. **Jenkins**: Automates the build process by pulling code from GitHub, building the Docker image, and pushing it to Docker Hub.
3. **Vagrant & VirtualBox**: Provisions two VMs with minimal resources (1 CPU, 512 MB of memory) to host the Docker containers.
4. **Ansible**: Manages configuration and deployment, including installing Docker, pulling the image, and running the container.

---

## Key Deliverables

- **Dockerfile**: A Dockerfile was created to containerize the Python application, making deployment seamless and environment-agnostic.
- **Vagrant Configuration**: Two VMs were provisioned using Vagrant, each configured with minimal resource requirements.
- **Jenkins Pipeline**: A Jenkins pipeline was developed to automate the steps of pulling code from GitHub, building the Docker image, and pushing it to Docker Hub.
- **Ansible Playbook**: An Ansible playbook automates the installation of Docker, pulling of the Docker image from Docker Hub, and execution of the container on the VMs.

---

## CI/CD Pipeline Workflow

1. **Code Repository**:

   - Code is hosted in a private GitHub repository, including the Python application and the Dockerfile.

2. **Jenkins Automation**:

   - Pulls the code from GitHub using an access token for authentication.
   - Builds the Docker image using the provided Dockerfile.
   - Pushes the Docker image to Docker Hub.
   - Triggers the Ansible playbook to deploy the application.

3. **Ansible Deployment**:

   - Installs Docker on the two Vagrant VMs.
   - Pulls the Docker image from Docker Hub.
   - Runs the Docker container on both VMs.

4. **Vagrant Infrastructure**:

   - Two low-spec VMs serve as target hosts for the application’s deployment.

---

## Architecture Diagram

![CI/CD Architecture Diagram](https://github.com/user-attachments/assets/68bbfc3d-3fd6-417d-9e0f-d7af0d4b93aa)

---

## Key Features

- **Automated Docker Builds**: Jenkins automatically builds the Docker image upon code updates in GitHub.
- **Seamless Multi-Machine Deployment**: Ansible deploys the application across multiple VMs with minimal manual intervention.
- **End-to-End Automation**: The pipeline automates the entire process, from code push to deployment, ensuring efficiency and reliability.
- **Consistent Environments**: Docker ensures that the application behaves consistently across all target environments.

---

## Application



https://github.com/user-attachments/assets/da8600f2-754f-4e84-a633-5a4a8b142e7c





## Screenshots

### Docker Hub Repository

![Docker Hub](https://github.com/user-attachments/assets/7ed35fc2-67b2-43a0-8bd2-494a99300e0b)

### Jenkins Pipeline

![Jenkins Pipeline](https://github.com/user-attachments/assets/93896fe5-c28b-4a6d-9e01-08af392f170c)

---

## Conclusion

This project integrates modern DevOps tools to deliver a streamlined, automated solution for building and deploying a Python web application. The CI pipeline minimizes manual effort, enhances consistency across environments, and simplifies the management of updates and rollbacks. This end-to-end automation showcases the power of combining Docker, Jenkins, Ansible, and Vagrant in a DevOps workflow.

*This project was completed during my DevOps internship at Orange.*
