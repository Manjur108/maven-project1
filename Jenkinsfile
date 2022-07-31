pipeline{
    agent any
    stages{
        stage("GIT checkout"){
            steps{
               git credentialsId: 'd05f03dd-19af-412d-9457-90a6741de8ff', url: 'https://github.com/Manjur108/maven-project1.git'
                
            }
        }
        stage("Maven Build"){
            steps{
                sh "mvn clean package"
                sh "mv target/*.war target/myweb.war"
            }
         }
    }
}
