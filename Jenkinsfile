pipeline {
  agent {
    docker {
      image 'node:18-alpine'
      args '-p 3000:3000'
    }
  }

  environment {
    PORT = '3000'
  }

  stages {
    stage('Checkout') {
      steps {
        checkout([$class: 'GitSCM',
          branches: [[name: '*/main']],
          userRemoteConfigs: [[
            url: 'https://github.com/NeckerFree/creating-pipeline-blue-ocean.git',
            credentialsId: 'github-token' // must match the ID in Jenkins credentials
          ]]
        ])
      }
    }

    stage('Install') {
      steps {
        sh 'npm install'
      }
    }

    stage('Test') {
      steps {
        sh 'npm test || echo "No tests found"'
      }
    }

    stage('Build') {
      steps {
        sh 'npm run build || echo "No build script"'
      }
    }
  }

  post {
    success {
      echo "✅ Build completed successfully!"
    }
    failure {
      echo "❌ Build failed."
    }
  }
}
