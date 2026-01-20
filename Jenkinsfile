pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'staging', 'prod'], description: 'Select Environment')
        string(name: 'APP_VERSION', defaultValue: '1.0.0', description: 'Application Version')
    }

    stages {
        stage('Info') {
            steps {
                echo "Environment: ${ENV}"
                echo "Version: ${APP_VERSION}"
            }
        }
    }
}
