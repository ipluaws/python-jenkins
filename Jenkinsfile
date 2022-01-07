pipeline {
    agent none
    stages {
        stage('Test on Development Environ'){
            agent {
                docker {
                    label 'master'
                    image 'python:3.7-alpine'
                }
            }
            steps {
                sh 'pip install -r requirements.txt'
                sh 'python test.py'
            }
            post {
                always {
                    junit 'test-reports/*.xml'
                }
            }
        }
    }
}