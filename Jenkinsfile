pipeline {
  agent any
  stages {
    stage("Clone repository") {
      steps {
        sh 'if [ -d "CI-Pipeline-Appclone" ]; then rm -Rf CI-Pipeline-Appclone; fi'
        sh "git clone https://github.com/MP-Prime/CI-Pipeline-Appclone"
      }
    }  
    stage("Test app") {
      steps {
        sh "sudo apt update"
        sh  "sudo apt install -y python3-pip"
        sh "ls -la"
        sh "cd backend"
        sh "ls -la"
        sh "pip3 install -r requirements.txt"
        sh "python3 app.py"
      }
    }  
    stage("Upload to Docker") {
      steps {
        sh ""
      }
    }
    stage("Get from Docker") {
      steps {
        sh ""
      }
    }  
    stage("Deploy in Kubernetes") {
      steps {
        sh ""
      }
    }
  }
}