pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages {
        stage ('S3 - Create Bucket'){
            steps {
                createS3Bucket('tf.state.bucket')
            }
        }
        stage ('Terraform init and apply - dev'){
            steps {
                script {
                    sh "terraform init"
                    sh returnStatus: true, script: 'terraform workspace new dev'
                    sh "terraform destroy --auto-approve"
                }
            }
        }
    }
}

def getTerraformPath(){
    def tfHOME = tool name: 'Terraform-plugin', type: 'terraform'
    return tfHOME
}

def createS3Bucket(bucketName){
    sh returnStatus: true, script: "aws s3api create-bucket --bucket ${bucketName} --region us-east-1"
}