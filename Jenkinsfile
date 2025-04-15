pipeline {
    agent {
        label "${AGENT}"
    }

    stages {
        stage('Continuous Integration') {
            steps {
                git branch: 'main', url: 'https://github.com/Zatlou/next_CICDCD.git'
            }
        }
        stage('Continuous Delivery') {
            steps {
                sh 'docker build . -t Zatlou/next_CICDCD'
                sh "docker login -u Zatlou -p ${DOCKER_PASSWORD}"
                sh 'docker push Zatlou/next_cicdcd'
            }
        }
    }
}
