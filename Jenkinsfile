pipeline {
    agent any
    stages {
        stage('Clean up'){
            steps {
               sh "docker rm -f $(docker ps -aq)"
            }
        }
        stage('Build images'){
            steps {
                sh "docker build -t flask-app"
            }
        }

        stage('Run container'){
            steps {
                sh "docker run -d -p 5500 --name flask-app }"
        }

    }
}