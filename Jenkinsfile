pipeline {
    agent ubuntu

    environment {
        MAVEN_HOME = tool name: 'Maven', type: 'maven' // Ensure Maven is configured in Jenkins
        JAVA_HOME = tool name: 'JDK', type: 'jdk' // Ensure JDK is configured in Jenkins
        PATH = "${MAVEN_HOME}/bin:${JAVA_HOME}/bin:${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the source control repository
                git branch: 'main', url: 'https://github.com/nimmagadda-phanindra/github-page.git'
            }
        }

        stage('Build') {
            steps {
                // Run Maven clean and package commands
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                // Run Maven tests
                sh 'mvn test'
            }
        }

        stage('Archive') {
            steps {
                // Archive the build artifacts
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
            }
        }

        stage('Deploy') {
            steps {
                // Example deployment stage (adjust to your needs)
                echo 'Deploying the application...'
                // You can add deployment steps here, e.g., SCP, Kubernetes deployment, etc.
            }
        }
    }

    post {
        always {
            // Cleanup or send notifications, if needed
            echo 'Pipeline completed.'
        }
        success {
            echo 'Build and tests succeeded!'
        }
        failure {
            echo 'Build or tests failed.'
        }
    }
}
