pipeline {
  agent { label 'linux'}
  tools { 
    terraform 'terraform-poc-path' 
  }
   stage('terraform init') { 
        steps { 
          sh label:'', script: 'terraform init'
        }
    }
    stage('terraform apply ') {
      steps {
        sh label:'', script: 'terraform apply --auto-approve'
      }
    }
  }
