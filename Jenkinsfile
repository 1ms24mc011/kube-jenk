pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/1ms24mc011/kube-jenk.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t aravind2003/kube-jenk:${BUILD_NUMBER} .'
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push aravind2003/kube-jenk:${BUILD_NUMBER}'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh '''
                sed -i "s|image:.*|image: aravind2003/kube-jenk:${BUILD_NUMBER}|" deployment.yaml
                kubectl apply -f deployment.yaml
                kubectl apply -f service.yaml
                '''
            }
        }
    }
}
