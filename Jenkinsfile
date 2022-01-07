node {
     stage 'Checkout source'
	  checkout scm
	 
	 stage 'Run Test Case'
	  sh 'python test.py'
	  
	 stage 'Build Docker image'
	  def app = docker.build("iplusaha25/python-jenkins")
}
