pipeline {
  agent { label 'linux'}
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    stage('checkout') {
      steps {
        checkout scm
      }
    }
    stage('terraform init') { 
        steps { 
<<<<<<< HEAD
            sh './terraformw init'
=======
            sh './terraform init'
>>>>>>> Adding New Resources to the enviroment
        }
    }
    stage('terraform') {
      steps {
        sh './terraform apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
