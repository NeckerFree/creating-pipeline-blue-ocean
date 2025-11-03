pipeline {
  agent {
    docker {
      args '''args \'--privileged -v /var/run/docker.sock:/var/run/docker.sock -p 3000:3000\'
'''
      image 'node:20'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }

  }
}