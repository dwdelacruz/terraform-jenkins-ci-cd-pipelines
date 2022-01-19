pipeline {
  agent { label 'linux'}
  tools { 
    terraform 'terraform-poc-path' 
  }
   stage('terraform init') { 
        steps { 
            sh './terraform init'
        }
    }
    stage('terraform apply ') {
      steps {
        sh './terraform apply --auto-approve -no-color'
      }
    }
  }
