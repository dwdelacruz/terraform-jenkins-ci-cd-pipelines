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
            sh './terraformw init'
        }
    }
    stage('terraform') {
      steps {
        sh './terraformw apply -no-color'
      }
    }
    
    #stage('hello AWS') {
    #  steps {
    #     withAWS(credentials: 'Jenkins-Terrafrom-POC-Role', region: 'us-east-1') {
    #         sh 'echo "it works" '
    #            }
    #        }
    #    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
