pipeline {
  agent { label 'linux'}
  tools { 
    terraform 'terraform-poc-path' 
  }
   stage('terraform init') { 
        steps { 
            sh './terraformw init'
        }
    }
    stage('terraform apply --auto-approve') {
      steps {
        sh './terraformw apply --auto-approve -no-color'
      }
    }
  }
