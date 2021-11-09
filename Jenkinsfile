pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages {
        stage ('S3 - Create Bucket'){
            steps {
                sh "ansible-playbook s3-bucket.yml"
            }
        }
        stage ('Terraform init and apply - dev'){
            steps {
                script {
                    sh "terraform init"
                    sh returnStatus: true, script: 'terraform workspace new dev'
                    sh "terraform apply -var-file=Prod.tfvars --auto-approve"
                }
            }
        }
    }
}

def getTerraformPath(){
    def tfHOME = tool name: 'Terraform-10', type: 'terraform'
    return tfHOME
}

def createS3Bucket(bucketName){
    sh returnStatus: true, script: "aws s3api create-bucket --bucket ${bucketName} --region us-east-1"
}