pipeline {
  agent { label 'linux'}
  tools { 
    terraform 'ddelacruz-aws-cred' 
  }
   stage('terraform init') { 
        steps { 
            sh './terraformw init'
        }
    }
    stage('terraform') {
      steps {
        sh './terraformw apply --auto-approve -no-color'
      }
    }
  }
