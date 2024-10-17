FROM openjdk:21-jdk-slim

WORKDIR /app

COPY HelloWorld.class /app

EXPOSE 8081

CMD ["java", "HelloWorld"]
