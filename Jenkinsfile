pipeline {
    agent any
    stages {
        stage('Clean up'){
            steps {
                docker rm -f $(docker ps -aq)
            }
        }
        stage('Build images'){
            steps {
                docker build -t flask-app
            }
        }

        stage('Run container'){
            steps {
                docker run -d -p 5500 --name flask-app }
        }

    }
}