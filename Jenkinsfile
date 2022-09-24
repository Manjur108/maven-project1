pipeline {
    agent any
	stages {
	    stage('Fetch code') {
            steps {
               git 'https://github.com/Manjur108/maven-project1.git'
            }

    }
         
	    } 
	stage ('mvn ck'){
     steps {
	    sh 'mvn clean install'
	  }
	
   } 
    
}	    
