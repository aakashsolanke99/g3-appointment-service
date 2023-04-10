pipeline{
  agent any
  stages{
  stage('Checkout'){
  steps{
    git branch:"main",  url:'https://github.com/aakashsolanke99/g3-appointment-service.git'
  }
  stage('Build'){
  steps{
       sh 'chomd a+x mvnw'
           sh './mvnw clean package -DskipTests=true'
  }
  post{
  always{
   archiveArtifacts 'target/*.jar'
  }
  }
  }
  stage(DockerBuild){
  steps{
  sh 'docker build -t aakashsolanke/g3-appointment-service:appointment-service-image .'
  }
  
  }
  
  }
  }
}