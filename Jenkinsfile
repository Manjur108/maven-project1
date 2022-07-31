pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                git credentialsId: 'd05f03dd-19af-412d-9457-90a6741de8ff', url: 'https://github.com/Manjur108/maven-project1.git'
                echo 'Hello World'
            }
        }
        stage('Test') {
            steps {
                sh "mvn clean package"
            }
       
        }
    }
