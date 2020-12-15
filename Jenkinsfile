pipeline {
    agent: any
    tools {
        maven 'builder'
    }
    stages{
        
        stage("Build"){
            steps{
                sh 'cd src'
                sh 'mvn clean install'

            }
        }
    }
}