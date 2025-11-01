pipeline {
  agent {
    docker {
      image 'node:18-alpine'
    }
  }

  environment {
    PORT = '3000'
  }

  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
  }
}
