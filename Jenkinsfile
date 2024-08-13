pipeline {
    agent any
    
    stages {
        
        stage('Install Dependencies') {
            steps {
                // Install Node.js and npm if necessary
                sh 'npm install --force'
          
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
                sh '''sshpass -p '12345' scp -rv /var/lib/jenkins/workspace/my-FE-project/dist/hello-world/browser/* node@172.27.55.78:/var/www/html/'''
            }
        }
    }
}
