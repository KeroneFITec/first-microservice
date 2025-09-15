#FROM amazoncorretto:17.0.12
FROM openjdk:17

USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/app.jar

USER root

ENV JAVA_OPTS='-Dhttp.nonProxyHosts=localhost'

EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/app.jar"]
ENV TIME_ZONE=America/Sao_Paulo
