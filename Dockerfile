FROM openjdk:8-jdk-alpine

RUN apk add --update --no-cache ttf-dejavu fontconfig && rm -rf /var/cache/apk/*

LABEL maintainer=张强<13631262097@139.com>

WORKDIR application
ARG JAR_FILE=ruoyi-admin/target/ruoyi-admin.jar
COPY ${JAR_FILE} application.jar
EXPOSE 8080

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "application.jar"]