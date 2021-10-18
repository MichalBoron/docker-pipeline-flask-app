pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        script {
          builtImage = docker.build('localhost:5000/flask-image')
        }
      }
    }

    stage('Publish') {
      steps {
        script {
          docker.withRegistry('http://localhost:5000') {
            builtImage.push()
          }
        }
      }
    }
  }
}
