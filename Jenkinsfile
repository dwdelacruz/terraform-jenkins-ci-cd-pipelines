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
<<<<<<< HEAD
            sh './terraformw init'
=======
            sh './terraform init'
>>>>>>> Adding New Resources to the enviroment
=======
            sh './terraformw init'
>>>>>>> Adding Content to the repo
        }
    }
    stage('terraform') {
      steps {
        sh './terraformw apply -auto-approve -no-color'
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
