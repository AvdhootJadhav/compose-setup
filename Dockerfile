FROM maven:3.9.6-amazoncorretto-17 AS builder
RUN mkdir compose-demo
COPY . compose-demo
WORKDIR compose-demo
RUN mvn clean package

FROM amazoncorretto:17-alpine
COPY --from=builder compose-demo/target/*.jar compose-demo/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "compose-demo/app.jar"]