pipeline {
    agent {
        label 'testc'
    }
    stages {
        stage('clone repo') {
            steps {
                echo 'cloning repo'
                git branch: 'Develop', url: 'https://github.com/ArtfordU7174/website'
            }
        }
        stage('code build') {
            steps {
                sh '''docker build . -t artford7174/jenkinsproject
			docker push artford7174/jenkinsproject
			 docker run -it -d artford7174/jenkinsproject 
			  docker rm -f $(docker ps -a -q)'''
            }
       
        }

    }
}
