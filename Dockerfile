FROM openjdk:21-jdk

WORKDIR /app

COPY . .

RUN ./mvnw package

COPY ./target/spring-petclinic*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]