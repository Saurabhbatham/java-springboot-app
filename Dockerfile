FROM maven:3.9.8-eclipse-temurin-17
COPY backend-app backend-app
WORKDIR backend-app
RUN mvn install
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/backend-app-0.0.1-SNAPSHOT.jar"]
