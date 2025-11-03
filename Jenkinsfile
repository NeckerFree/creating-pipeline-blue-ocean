pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-v /var/run/docker.sock:/var/run/docker.sock' // no -p to avoid port conflicts
        }
    }
    stages {
        stage('Checkout') {
            steps {
                // Checkout using GitHub credentials
                checkout([$class: 'GitSCM',
                    branches: [[name: '*/main']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [],
                    userRemoteConfigs: [[
                        url: 'https://github.com/NeckerFree/creating-pipeline-blue-ocean.git',
                        credentialsId: 'github-elio'
                    ]]
                ])
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
    }
}
