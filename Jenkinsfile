pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                git 'https://github.com/tjdp67/spring-petclinic.git'
                sh "mvnw package"
            }
        }
        stage('Test') {
            steps {
                sh "mvnw test"
            }
        }
        stage('Deploy') {
            steps {
                echo "Dummy for Deploy step"
            }
        }
    }
}