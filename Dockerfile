# Pull base image 
From tomcat:8.0

# Maintainer 
MAINTAINER "myounsipro@gmail.com" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps