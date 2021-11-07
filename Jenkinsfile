pipeline {
    agent any
    stages {
        stage ('Terraform init and apply - dev'){
            steps {
                sh "terraform workspace new dev"
                sh "terraform init"
                sh "terraform apply -var-file=dev.tfvars --auto-approve"
            }
        }
    }
}