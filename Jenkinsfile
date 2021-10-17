pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        script {
          docker.build('registrycontainer:5000/flask-image')
        }
      }
    }

    stage('Publish') {
      steps {
        echo 'Publish not yet implemented'
      }
    }
  }
}
