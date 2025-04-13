pipeline {
   agent any

 stages {
      stage('Clone') {
        steps {
          echo "clonig the git repo"
          checkout scm
        }
        
      }
   stage('Build Docker Image') {

     steps {
       echo "building docker image"
       sh 'docker build -t my-html-app .'
     }
   }
   stage('Run Container') {
     steps {
       echo "runing docker container "
        sh '''
                    docker stop html-container || true
                    docker rm html-container || true
                    docker run -d -p 8085:80 --name html-container my-html-app
                '''
     }
   }
  
 
 }
  
}
