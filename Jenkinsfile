pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Stage: Checkout'
                git branch: 'main',
                    url: 'https://github.com/RAHUL-167/episode-8-jenkins-params.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Stage: Build'
                bat '''
                echo Build started > build.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Stage: Test'
                bat '''
                echo Tests passed > test-results.txt
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo 'Stage: Deploy'
                bat '''
                echo Deployment done > deploy.txt
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully'
            archiveArtifacts artifacts: '*.txt', fingerprint: true
        }
        failure {
            echo 'Pipeline failed'
            archiveArtifacts artifacts: '*.txt', fingerprint: true
        }
    }
}
