pipeline {
  agent any

  environment {
    AWS_REGION = "eu-north-1"
    ECR_REPO = "906482382692.dkr.ecr.eu-north-1.amazonaws.com/devops-eks-app"
  }

  stages {
    
    stage ('Build Docker Image') {
      steps {
        sh 'docker build -t devops-app .'
      }
    }
    stage ('List Docker Images') {
      steps {
        sh 'docker images'
      }
    }
    stage ('Tag Image') {
      steps {
        sh 'docker tag devops-app:latest 906482382692.dkr.ecr.eu-north-1.amazonaws.com/devops-eks-app:latest'
      }
    }
    stage('Login to ECR') {
      steps {
        sh '''
        aws ecr get-login-password --region eu-north-1 | \
        docker login --username AWS --password-stdin 906482382692.dkr.ecr.eu-north-1.amazonaws.com
        '''
      }
    }
    stage('Push Image') {
      steps {
        sh 'docker push 906482382692.dkr.ecr.eu-north-1.amazonaws.com/devops-eks-app:latest'
      }
    }
    stage ('Deploy to K8s') {
      steps {
        sh 'kubectl apply -f k8s/'

      }
    }
  }
}



        




        
        
