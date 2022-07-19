pipeline {
    agent {
        label 'prodc'
    }
    stages {
        stage('clone repo') {
            steps {
                echo 'cloning repo'
                git 'https://github.com/ArtfordU7174/website'
            }
        }
        stage('code build') {
            steps {
                sh '''docker build . -t artford7174/jenkinsproject'''
            }
        
        }
        stage('publish code') {
            steps {
                sh 'docker run -it -d --name final_website -p 80:80 artford7174/jenkinsproject'
            }
        }


    }
}
