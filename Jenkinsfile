pipeline {
    agent any

    stages {
        stage('Test Echo') {
            steps {
                echo 'Hello, Kushal!'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
