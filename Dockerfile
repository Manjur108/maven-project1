FROM openjdk:8
EXPOSE 8080
ADD target/*.jar manju.jar
ENTRYPOINT ["java","-jar","/manju.jar"]
