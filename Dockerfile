FROM openjdk:21-jdk

WORKDIR /app

COPY . .

RUN ./mvnw package

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "target/spring-petclinic-3.4.0-SNAPSHOT.jar"]