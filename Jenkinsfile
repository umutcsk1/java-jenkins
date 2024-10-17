pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/umutcsk1/java-jenkins'
            }
        }
        stage('Build') {
            steps {
                sh 'make'
            }
        }
        stage('Test') {
            steps {
                sh 'make test'
            }
        }
        stage('Deploy') {
            when { branch 'master' }
            steps {
                sh 'scp target/my-app.jar deploy@server:/var/www/html/'
            }
        }
    }
}