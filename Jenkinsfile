pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'staging', 'prod'], description: 'Select Environment')
        string(name: 'APP_VERSION', defaultValue: '1.0.0', description: 'App Version')
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo "Code checked out"
            }
        }

        stage('Build') {
            steps {
                echo "Building for ${ENV}, version ${APP_VERSION}"
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying to ${ENV}"
            }
        }
    }
}
