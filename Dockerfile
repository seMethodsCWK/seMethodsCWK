# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container. This assumes the JAR file is created in the 'target' folder by Maven.
# Ensure that the JAR is named correctly. In your case, it's assumed to be 'population-report.jar'
COPY target/population-report.jar /app/population-report.jar

# Expose the port your application will run on. Update if your application uses a different port.
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/population-report.jar"]

