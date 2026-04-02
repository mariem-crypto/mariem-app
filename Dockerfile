FROM tomcat:8
MAINTAINER RSI3
COPY target/mariem-app.war /usr/local/tomcat/webapps/mariem-app.war
