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
                sh '''docker build . -t artford7174/jenkinsproject 
  		       docker run -it -d artford7174/jenkinsproject 
			docker rm -f $(docker ps -a -q)'''
            }
        
        }
        stage('publish code') {
            steps {
                sh 'docker run -it -d --name final_website -p 82:80 artford7174/jenkinsproject'
            }
        }


    }
}
