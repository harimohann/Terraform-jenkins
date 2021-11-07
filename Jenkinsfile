pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages {
        stage ('Terraform init and apply - dev'){
            steps {
                script {
                    sh "terraform init"
                    sh returnStatus: true, script: 'terraform workspace new dev'
                    sh "terraform apply -var-file=dev.tfvars --auto-approve"
                }
            }
        }
    }
}

def getTerraformPath(){
    def tfHOME = tool name: 'Terraform-plugin', type: 'terraform'
    return tfHOME
}