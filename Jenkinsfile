pipeline {
  agent any

  parameters {
    booleanParam defaultValue: true, name: 'plan'
  }

  environment {
    AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  }

  stages {
    stage('Terraform init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform plan') {
      when {
        expression { params.plan == true }
      }
      steps {
        sh 'terraform plan'
      }
    }

    // stage('Terraform apply') {
    //   when {
    //     expression { params.apply == 'true' }
    //   }
    //   steps {
    //     sh 'terraform apply'
    //   }
    // }
  }
  
}
