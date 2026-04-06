pipeline {
    agent any
    environment {
        DOCKER_IMAGE         = "mariemtroudi/tomcat"
        DOCKER_TAG           = "latest"
        REGISTRY_CREDENTIALS = "dockerhub_credentials"
    }
    tools {
        maven 'Maven'
        jdk 'java'
    }
    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/mariem-crypto/mariem-app.git'
            }
        }

        stage('Build Application') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'mvn test'
            }
        }

        // ⏳ À activer quand SonarQube sera configuré
        // stage('SonarQube Analysis') {
        //     steps {
        //         withSonarQubeEnv('SonarQubeServer') {
        //             sh 'mvn sonar:sonar'
        //         }
        //     }
        // }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:$DOCKER_TAG .'
            }
        }

        stage('Login to DockerHub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub_credentials',
                    usernameVariable: 'USERNAME',
                    passwordVariable: 'PASSWORD'
                )]) {
                    sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push $DOCKER_IMAGE:$DOCKER_TAG'
            }
        }

        // ⏳ À activer quand Kubernetes sera configuré (Sprint 2)
        // stage('Deploy to Kubernetes') {
        //     steps {
        //         sh 'kubectl apply -f kubernetes/deployment.yaml'
        //         sh 'kubectl apply -f kubernetes/service.yaml'
        //     }
        // }

    }
    post {
        success {
            echo 'Pipeline exécuté avec succès'
        }
        failure {
            echo 'Pipeline échoué'
        }
    }
}
