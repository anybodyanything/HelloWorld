FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

COPY target/helloWorld.jar app.jar

EXPOSE 9090

ENTRYPOINT ["java", "-jar", "app.jar"]