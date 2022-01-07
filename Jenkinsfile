node {
     stage 'Checkout source'
	  checkout scm
	 
	 stage('Build docker Image'){
      def app = docker.build("iplusaha25/python-jenkins")
    }
     stage('Test Image'){
       app.inside {
         sh 'echo "TEST PASSED"' 
      }  
    }
     stage('Push Image'){
       docker.withRegistry('https://registry.hub.docker.com', 'Jenkins') {            
       app.push("${env.BUILD_NUMBER}")   
      }
	}  
}
