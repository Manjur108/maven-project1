pipeline {
    agent any
	stages {
	    stage('Fetch code') {
            steps {
               git 'https://github.com/Manjur108/maven-project1.git'
            }

	    }
         stage('build the code') {
            steps {
		sh ' mvn clean install'
	    }    
    }		    
	    }
}	    
