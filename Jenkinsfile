pipeline {
    agent any
    
    stages {
        
        stage('Install Dependencies') {
            steps {
                // Install Node.js and npm if necessary
                sh 'npm install --force'
                // Install Angular CLI
                sh 'npm install -g @angular/cli'
            }
        }
        
        stage('Build') {
            steps {
                // Build your Angular project
                sh 'npm run ng build'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy your built Angular project to your server or hosting service
                sh 'scp -r /var/lib/jenkins/workspace/dist/* root@192.168.50.2:/var/www/html/'
            }
        }
    }
}
