pipeline {
    agent {
        kubernetes {
            inheritFrom 'kube-agent'
            retries 1
        }
    }
    stages {
        stage('Docker') {
            environment {
                DOCKER_LOGIN = credentials('DOCKER_LOGIN')
            }
            steps {
                container('docker') {
                    sh '''
                        echo $DOCKER_LOGIN_PSW | docker login -u $DOCKER_LOGIN_USR --password-stdin
                        docker build -t pilet/java-base:latest .
                        docker push pilet/uno-store:latest
                    '''
                }
            }
        }
    }

}