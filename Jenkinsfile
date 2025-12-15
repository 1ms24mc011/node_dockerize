pipeline {
  agent any

  environment {
    IMAGE_NAME = "aravind2003/node_demo"
  }

  stages {

    stage('Checkout') {
      steps {
        git branch: 'master',
            url: 'https://github.com/1ms24mc011/node_dockerize'
      }
    }

    stage('Install Node Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          dockerImage = docker.build("${IMAGE_NAME}:latest")
        }
      }
    }

    stage('Push to Docker Hub') {
      steps {
        script {
          docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
            dockerImage.push("latest")
          }
        }
      }
    }
  }
}
