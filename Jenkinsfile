pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
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

def getTerraformPath(){
    def tfHOME = tool name: 'Terraform-plugin', type: 'terraform'
    return tfHome
}