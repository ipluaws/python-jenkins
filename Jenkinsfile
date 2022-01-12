pipeline {
    environment {
        registry = "iplusaha25/python-jenkins"
        registryCredential = 'dockerhub'
    }
    
    
    agent any 
    
    stages {
        stage('Building image') {
            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
    }
}
