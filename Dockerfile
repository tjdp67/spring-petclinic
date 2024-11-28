FROM openjdk:21-jdk

WORKDIR /app

RUN ./mvnw package

COPY target/spring-petclinic*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]