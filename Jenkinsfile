pipeline {
    agent any
    environment {
        SONAR_HOME = tool "sonar"
    }
    stages {
        stage("clone from the github") {
            steps {
                git url: "https://github.com/Aesha001/Node_TODO_Docker.git", branch: "main"
            }
        }

        stage("Sonar quality check") {
            steps {
                withSonarQubeEnv("sonar") {
                    sh "$SONAR_HOME/bin/sonar-scanner -Dsonar.projectName=todoapp -Dsonar.projectKey=todoapp"
                }
            }
        }
    }
}
