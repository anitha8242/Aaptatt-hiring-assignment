pipeline {
    agent any
     tools {
         maven "maven"
    }
    stages {
        stage ('git clone') {
            steps {
                git 'https://github.com/anitha8242/Aaptatt-hiring-assignment.git'
            }
        }
                stage ('build') {
            steps {
                sh 'mvn  clean package'
            }
        } 
        stage ('Docker Version') {
            steps {
                 sh 'docker version'
            }
        }
        stage ('build docker image') {
            steps {
                sh 'docker build -t aaptatt .'
            }
        }
        stage ('build docker container') {
            steps {
                sh 'docker stop aaptatt1'
                sh 'docker rm aaptatt1'
                sh 'docker run -dt --name aaptatt1 -p 9090:8080 aaptatt'
            }
        }
        
    }
}
