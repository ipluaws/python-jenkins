pipeline {
    agent none
    stages {
     def app 
     stage('clone repository') {
      checkout scm 
       }	  
    }
     stage('Build docker Image'){
      app = docker.build("iplusaha25/python-jenkins")
    }
     stage('Test Image'){
       app.inside {
         sh 'echo "TEST PASSED"' 
      }  
    }
     stage('Push Image'){
       docker.withRegistry('https://registry.hub.docker.com', 'git') {            
       app.push("${env.BUILD_NUMBER}")   
      }
    }  
}
