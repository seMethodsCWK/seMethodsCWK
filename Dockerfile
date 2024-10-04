FROM openjdk:11
COPY target/population-report.jar population-report.jar
ENTRYPOINT ["java", "-jar", "population-report.jar"]
