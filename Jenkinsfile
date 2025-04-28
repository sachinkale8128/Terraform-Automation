pipeline {
    agent any

    stages {
        stage('Cloning github repo') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sachinkale8128/Terraform-Automation.git']])
            }
        }
    
         stage ("terraform init") {
           steps {
                 sh ("terraform init -reconfigure") 
            }
         }
        
        stage ("terraform Plan") {
            steps {
                sh ("terraform plan") 
            }
        }

        stage ("terraform apply") {
            steps {
                echo "Terraform action is --> ${null}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
