pipeline {
    agent any

    environment {
        APP_NAME    = "mariem-app"
        PROJECT_DIR = "/home/machine1/mariem-app"
        WEBAPPS     = "/opt/tomcat/apache-tomcat-8.5.59/webapps"
        TOMCAT_BIN  = "/opt/tomcat/apache-tomcat-8.5.59/bin"
    }

    stages {

        stage('Git Pull') {
            steps {
                echo '== Recuperation du code source =='
                dir("${PROJECT_DIR}") {
                    sh 'git pull origin master || git pull origin main'
                }
            }
        }

        stage('Build WAR') {
            steps {
                echo '== Build Maven =='
                dir("${PROJECT_DIR}") {
                    sh 'mvn clean package -DskipTests'
                    sh 'ls -lh target/mariem-app.war'
                }
            }
        }

        stage('Deploy vers Tomcat') {
            steps {
                echo '== Deploiement sur Tomcat =='
                sh '''
                    rm -rf  ${WEBAPPS}/mariem-app
                    rm -f   ${WEBAPPS}/mariem-app.war
                    cp ${PROJECT_DIR}/target/mariem-app.war ${WEBAPPS}/mariem-app.war
                    echo "WAR copie avec succes dans webapps"
                '''
            }
        }

        stage('Verification') {
            steps {
                echo '== Test disponibilite =='
                sh '''
                    sleep 12
                    curl -s -o /dev/null -w "%{http_code}" http://localhost:8070/mariem-app/ | grep -q "200" \
                        && echo "mariem-app est UP (HTTP 200)" \
                        || echo "Verifier les logs Tomcat"
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline reussi — mariem-app deployee sur Tomcat port 8070'
        }
        failure {
            echo '❌ Echec du pipeline — consulter les logs Jenkins'
        }
    }
}
