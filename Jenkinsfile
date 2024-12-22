pipeline {
    agent any
    environment {
        GITHUB_CREDENTIALS = 'github-credentials'  // Replace with your GitHub credentials ID
        DOCKERHUB_CREDENTIALS = 'dockerhub-credentials-id' // Replace with your Docker Hub credentials ID
        DOCKER_IMAGE = 'shawky2002020/final_proj:latest' // Replace with your Docker image name
        INVENTORY_FILE = './hosts.ini' // Path to your inventory file
        PLAYBOOK_FILE = './docker_setup.yml' // Path to your Ansible playbook
    }
    stages {
        stage('Install Dependencies') {
            steps {
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install -r requirements.txt
                '''
            }
        }
        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t ${DOCKER_IMAGE} .
                '''
            }
        }
        stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: "${DOCKERHUB_CREDENTIALS}", usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                    docker push ${DOCKER_IMAGE}
                    '''
                }
            }
        }
        stage('Deploy with Ansible') {
            steps {
                sh '''
                ansible-playbook -i ${INVENTORY_FILE} ${PLAYBOOK_FILE}
                '''
            }
        }
    }
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Please check the logs.'
        }
    }
}

