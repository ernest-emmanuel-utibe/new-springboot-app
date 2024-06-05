pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Deploy') {
            steps {
                // Example deployment step
                sh 'scp target/spring-boot-app-1.0-SNAPSHOT.jar user@server:/path/to/deploy'
            }
        }
    }

    post {
        success {
            echo 'Build, Test, Package, and Deploy steps completed successfully.'
        }
        failure {
            echo 'Build process failed.'
        }
    }
}