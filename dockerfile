FROM openjdk:8 AS BUILD_IMAGE
RUN yum install maven -y
RUN git clone -b docker https://github.com/Manjur108/maven-project1.git
RUN mvn install

FROM tomcat:8-jre11

RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=BUILD_IMAGE **/*.war /usr/local/tomcat/webapps/manju.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
