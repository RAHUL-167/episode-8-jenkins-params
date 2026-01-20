pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Build stage'
                bat '''
                echo Build completed > build.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Running unit tests'
                bat '''
                powershell -ExecutionPolicy Bypass -File tests\\calculator.test.ps1
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy stage'
                bat '''
                echo Deployment completed > deploy.txt
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline SUCCESS'
            archiveArtifacts artifacts: '*.txt', fingerprint: true
        }

        failure {
            echo 'Pipeline FAILED'
            archiveArtifacts artifacts: '*.txt', fingerprint: true
        }
    }
}
