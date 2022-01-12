pipeline {
    environment {
        registry = "iplusaha25/python-jenkins"
        registryCredential = 'dockerhub'
    }
    
    
    agent any 
    
    stages {
        stage('Checkout') {
#            steps {
#                withCredentials([gitUsernamePassword(credentialsId: 'jenkins-user-github', gitToolName: 'Default')]) {
#                }
#                script {
#                    git url: 'https://ipluaws:8005258770Is@github.com/ipluaws/python-jenkins'
#                    sh "ls -lart ./*"
#                    sh "git checkout main"
#                }
#            }
#        }
        stage('Building image') {
            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
    }
}
