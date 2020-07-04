FROM openjdk:14-slim-buster as builder
RUN mkdir /app
ADD pom.xml  /app
ADD mvnw  /app
ADD .mvn/  /app

WORKDIR /app
RUN ./mvnw dependency:resolve
ADD . /app
RUN ./mvnw package -DskipTests

FROM openjdk:14-slim-buster
ADD --from=builder /app/target/*.jar /app.jar
WORKDIR /
CMD ["java", "-jar", "/app.jar"]




