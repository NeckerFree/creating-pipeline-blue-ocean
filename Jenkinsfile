pipeline {
  agent {
    docker {
      image 'docker:26.1-dind'
      args '''-p 3000:3000
--privileged -v /var/run/docker.sock:/var/run/docker.sock'''
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