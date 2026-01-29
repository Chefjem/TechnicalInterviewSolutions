FROM openjdk:17-jdk-alpine
VOLUME /tmp 
#normal şartlarda yukarıdaki volume satırı olmasa da çalışır muhtemelen ama production için 
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
