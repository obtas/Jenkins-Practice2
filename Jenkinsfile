pipeline {
    agent any
    stages {
        stage('Clean up'){
            steps {
               sh 'docker rm -f $(docker ps -aq) || true'
            }
        }
        stage('Build images'){
            steps {
                sh 'docker build -t flask-app .'
            }
        }
        stage('Say hello'){
            steps {
                sh 'echo "hi friends!"'
            }
        }

        stage('Run container'){
            steps {
                sh 'docker run -d -p 80:5500 --name flask-app flask-app'
            }
        }
    }
}
