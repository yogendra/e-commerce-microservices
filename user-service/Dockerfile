FROM openjdk:14-slim-buster as builder
RUN mkdir /app
COPY pom.xml mvnw  /app/
COPY .mvn /app/.mvn
RUN ls -lR /app
WORKDIR /app
RUN ./mvnw dependency:resolve
ADD . /app
RUN ./mvnw package -DskipTests

FROM openjdk:14-slim-buster as runtime
COPY --from=builder /app/target/*.jar /app.jar
WORKDIR /
CMD ["java", "-jar", "/app.jar"]




