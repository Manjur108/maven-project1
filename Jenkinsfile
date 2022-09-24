pipeline {
    agent any
	tools {
	    maven "maven"
	    jdk "java11"
	}
	environment {
        //once you sign up for Docker hub, use that user_id here
        registry = "949499/manjuimage"
        //- update your credentials ID after creating credentials for connecting to Docker Hub
        registryCredential = 'dockerid'
        dockerImage = ''
    }

	stages {
	    stage('Fetch code') {
            steps {
               git 'https://github.com/Manjur108/maven-project1.git'
            }

	    }

	    }
	    // Building Docker images
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry
        }
      }
    }
    
     // Uploading Docker images into Docker Hub
    stage('Upload Image') {
     steps{    
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
            }
        }
      }
    }
}	    
