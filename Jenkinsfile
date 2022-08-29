pipeline {
    agent any 
    stages {
	    stage('git clone') {
            steps {
                sh '''
		 if [ -e bose-infra ];
		  then
		    exit
		 else	    
                     git clone git@github.com:rajvasupilli/bose-infra.git
		 fi
                '''
            }
		}
        stage('Terraform Init & Apply') { 
            steps {
			   sh '''
                find bose-infra -type d | grep -v -e .git -e .terraform > folder.txt

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
