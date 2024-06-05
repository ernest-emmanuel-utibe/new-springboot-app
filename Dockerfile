# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the compiled Java code into the container
COPY target/spring-boot-app-1.0-SNAPSHOT.jar /app/spring-boot-app.jar

# Run the application
CMD ["java", "-jar", "spring-boot-app.jar"]