pipeline {
  agent any

  stages {
    stage ('clone') {
      steps {
        git 'The path of repo'
      }
    }
    stage ('Build Docker Image') {
      steps {
        sh 'docker build -t devops-app: latest .'
      }
    }
    stage ('List Docker Images') {
      steps {
        sh 'docker image ls'
      }
    }
    stage ('Tag Image') {
      steps {
        sh 'docker tag image_name:latest/ECR-URI'
      }
    }
    stage ('Deploy to K8s') {
      steps {
        sh 'kubectl apply -f k8s/'

      }
    }
  }
}



        




        
        
