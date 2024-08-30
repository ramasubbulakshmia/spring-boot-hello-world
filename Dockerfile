# Use a Java image as the base
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build output (JAR file) to the container
COPY target/myapp-0.0.1-SNAPSHOT.jar /app/myapp.jar

# Expose the port on which your Spring Boot app will run
EXPOSE 8080

# Set the default command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
