pipeline {
    agent {
        docker {
            image 'zatlou/node-docker:18'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    environment {
        DOCKER_IMAGE = "zatlou/next-cicdcd"
        TAG = "latest"
        REGISTRY_CREDENTIALS = credentials('dockerhub-creds')
    }

    stages {
        stage('Cloner le dépôt') {
            steps {
                git branch: 'main', url: 'https://github.com/Zatlou/next_CICDCD.git'
            }
        }

        stage('Installer les dépendances') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build de l’app') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Docker Build') {
            steps {
                sh "docker build -t $DOCKER_IMAGE:$TAG ."
            }
        }

        stage('Docker Push') {
            steps {
                sh "echo $REGISTRY_CREDENTIALS_PSW | docker login -u $REGISTRY_CREDENTIALS_USR --password-stdin"
                sh "docker push $DOCKER_IMAGE:$TAG"
            }
        }
    }

    post {
        success {
            echo "✅ Image Docker poussée avec succès sur Docker Hub !"
        }
        failure {
            echo "❌ Une erreur est survenue pendant le pipeline."
        }
    }
}
