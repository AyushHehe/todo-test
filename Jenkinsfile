pipeline{
    agent{
        label 'linux'
    }

    stages{
        stage('Build Docker Image'){
            steps{
                echo 'Building The Docker Image'
                sh 'docker build -t todo-app .'
            }
        }

        stage('Deploy New Container'){
            steps{
                echo 'Stopping and Removing Container...'

                sh 'docker stop my-todo-container || true'
                sh 'docker rm my-todo-container || true'

                echo "Starting New Container..."
                sh 'docker run -d --name my-todo-container -p 8000:8000 todo-app'
            }
        }
    }

}
