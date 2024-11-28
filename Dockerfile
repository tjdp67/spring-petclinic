FROM openjdk:21-jdk

WORKDIR /app

COPY . .

RUN ./mvnw package

RUN ls -la
COPY ./target/spring-petclinic-3.4.0-SNAPSHOT.jar app.jar
RUN ls -la

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]