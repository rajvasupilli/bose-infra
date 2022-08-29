pipeline {
    stages {
        stage('Terraform Init & Apply') { 
            steps {
			   sh '''
                find . -type d | grep -v -e .git -e .terraform > folder.txt

				sed -i '1d' folder.txt
				
				cat folder.txt
				for path in `cat folder.txt` 
					do
						cd /root/.jenkins/workspace/bose-infrastructure/$path
						terraform init
						terraform apply --auto-approve  
					done
					'''
            }
        }
    }
}
