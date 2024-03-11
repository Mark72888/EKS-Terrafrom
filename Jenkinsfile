pipeline {
    agent any
    environment {
       AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
       AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
       region = "us-east-1"
    }
    stages {
        stage('checkout SCM'){
            steps {
               git branch: 'main', credentialsId: 'github', url: 'https://github.com/Mark72888/Jenkins-Terraform-EKS-Cluster.git'
            }
        }
        
        stage('Initializings Terraform'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform init'
                    }
                }
            }
        }
        
        stage('Formating Terraform'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform fmt'
                    }
                }
            }
        }
        
        stage('Validating Terraform'){
            steps{
                script{
                    dir('EKS'){
                        sh 'terraform validate'
                    }
                }
            }
        }
        
        stage('Review Terraform') {
            steps {
                script {
                    dir('EKS') {
                        sh 'terraform plan'
                    }
                }
            }
        }
    }
    
}
