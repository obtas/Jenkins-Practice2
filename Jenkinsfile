pipeline {
    agent any
    stages {
        stage('Clean up'){
            steps {
               sh "docker rm -f \$(docker ps -aq) || true"
            }
        }
        stage('Build images'){
            steps {
                sh "docker build -t flask-app /home/ubuntu/Jenkins-Practice/Jenkins-Practice2/Task1 . "
            }
        }

        stage('Run container'){
            steps {
                sh "docker run -d -p 5500 --name flask-app }"
            }
        }
    }
}