FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /target/service-config*.jar /app.jar
CMD [ "java", "-jar", "/app.jar", "--spring.profiles.active=prod" ]
# Exposing container port for binding with host
EXPOSE 8888

# Using Django app directory as home
# WORKDIR /src