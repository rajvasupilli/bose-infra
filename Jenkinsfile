pipeline {
    agent any 
    stages {
	    stage('git clone') {
            steps {
                sh '''
                   git clone git@github.com:rajvasupilli/bose-infra.git
                   ls -l
                '''
            }
		}
        stage('Terraform Init & Apply') { 
            steps {
			   sh '''
                find . -type d | grep -v -e .git -e .terraform > folder.txt

				sed -i '1d' folder.txt
				
				cat folder.txt
				for path in `cat folder.txt` 
					do
						cd /home/ubuntu/.jenkins/workspace/bose-infra-pipeline/$path
						terraform init
						terraform apply --auto-approve  
					done
					'''
            }
        }
    }
}
