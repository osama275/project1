pipeline {
        agent any
        stages {
                stage('Clone') {
                        steps {
                        git branch: 'main'
                        url: 'https://github.com/Gamal-Mohammad/project1.git'
                        }
                }
                stage('Build') {
                        steps {
                        sh '''
                        cd "${JENKINS_HOME}/workspace/myjob1"
                        docker build -t appx:v${BUILD_NUMBER} .
                        '''
                }
                }
                stage('Testing') {
                        steps {
                        sh '''
                        docker run -d --name testapp${BUILD_NUMBER} appx:v${BUILD_NUMBER} .
                        '''
                        }
                }
                stage('Testing2') {        
                        steps {
                        sh '''
                        docker rm -f testapp${BUILD_NUMBER}
                        '''
                        }
                }
                stage('Deploy') {
                        steps {
                        sh '''
                        docker run -d --name testapp${BUILD_NUMBER} appx:v${BUILD_NUMBER} .
                        '''
                        }
                }
        }
}
