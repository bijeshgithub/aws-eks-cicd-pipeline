# AWS EKS CI/CD Pipeline 

## Project Overview

This project demonstrates an **end-to-end CI/CD pipeline** for deploying a containerized application on AWS using modern DevOps tools.

The pipeline automatically builds, pushes, and deploys the application whenever new code is pushed to the repository.

------------------------------------------------------------------START--------------------------------------------------------

## Technologies Used

* Git
* Jenkins
* Docker
* AWS ECR
* AWS EKS
* Kubernetes
* AWS EC2
* AWS Load Balancer

---

## Architecture

```
Developer
   ↓
GitHub Repository
   ↓
Jenkins Pipeline
   ↓
Docker Image Build
   ↓
Push Image → AWS ECR
   ↓
Deploy to AWS EKS
   ↓
EC2 Worker Nodes
   ↓
Kubernetes Pods
   ↓
AWS Load Balancer
   ↓
Users Access Application
```

---

## CI/CD Workflow

1. Developer pushes code to GitHub
2. GitHub webhook triggers Jenkins pipeline
3. Jenkins builds Docker image
4. Docker image pushed to AWS ECR
5. Kubernetes deployment updated in EKS
6. New pods created automatically
7. Application exposed via Load Balancer

---

## Project Structure

```
aws-eks-cicd-pipeline
│
├── Dockerfile
├── Jenkinsfile
├── index.html
│
└── k8s
    ├── deployment.yaml
    └── service.yaml
```

---

## Docker Build

Build the Docker image:

```
docker build -t devops-app .
```

Push image to ECR:

```
docker push <ECR-Repository-URI>
```

---

## Kubernetes Deployment

Deploy application to EKS cluster:

```
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
```

---

## Jenkins Pipeline

Pipeline stages:

* Clone source code
* Build Docker image
* Push image to AWS ECR
* Deploy application to AWS EKS

---

## Learning Outcomes

* CI/CD pipeline automation
* Docker containerization
* Kubernetes deployments
* AWS ECR image management
* AWS EKS cluster operations
* Infrastructure automation concepts

---

## Future Improvements

* Add Terraform for infrastructure provisioning
* Add Prometheus & Grafana monitoring
* Implement Blue-Green deployment
* Add security scanning

---------------------------------------THANKYOU ------The END-----------------------------------------


