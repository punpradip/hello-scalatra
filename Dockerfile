FROM tomcat
MAINTAINER Pradip

RUN apt-get update && apt-get clean
COPY target/scalatra-maven-prototype.war /usr/local/tomcat/webapps/scalatra-maven-prototype.war
EXPOSE 8081
CMD ["catalina.sh", "run"]
