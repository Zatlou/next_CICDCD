pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Commence le build...'
                // Ajoute ici les commandes de build, par ex. 'npm install' ou 'mvn package'
            }
        }
        stage('Test') {
            steps {
                echo 'Lancement des tests...'
                // Ajoute ici la commande pour lancer tes tests, par ex. 'npm test' ou 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Déploiement en cours...'
                // Ajoute ici la commande de déploiement
            }
        }
    }

    post {
        success {
            echo 'Pipeline terminé avec succès !'
        }
        failure {
            echo 'Oh non, il y a eu un problème dans le pipeline...'
        }
    }
}
