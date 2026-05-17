FROM maven:3.6-jdk-8

WORKDIR /app

COPY . /app

RUN mvn clean package



#stage 2

FROM gcr.io/distroless/java17-debian13:latest

WORKDIR /app

COPY --from=0 /app/target/*.jar /app/app.jar

CMD ["java", "-cp","target/hello-app-1.0-SNAPSHOT.jar","com.mycompany.app.App"]
