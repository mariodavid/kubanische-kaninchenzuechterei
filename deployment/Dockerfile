FROM openjdk:8-jre-alpine

ADD container-files/app.jar /app/app.jar

CMD ["java", "-Dapp.home=/app/home", "-jar", "/app/app.jar"]