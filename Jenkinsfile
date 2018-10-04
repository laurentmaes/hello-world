pipeline {
  agent any
  stages {
    stage('First') {
      parallel {
        stage('First') {
          steps {
            echo 'Starting'
            sleep 10
          }
        }
        stage('Second') {
          steps {
            sleep 3
          }
        }
        stage('Last') {
          steps {
            echo 'Last'
          }
        }
      }
    }
  }
  environment {
    myName = 'has this value'
  }
}