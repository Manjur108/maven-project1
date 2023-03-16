pipeline {
    agent any
      tools{
          maven "maven"
      }

    stages {
        stage('git checkout') {
            steps {
                git 'https://github.com/Manjur108/maven-project1.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t 949499/manju.jar:$BUILD_NUMBER .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u 949499 -p ${dockerhubpwd}'  
                   
                    }
                     sh 'docker push 949499/manju.jar:$BUILD_NUMBER'
                }
        }   }
}
                    
    }
