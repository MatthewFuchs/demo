# Use an official Java runtime as a base image
FROM eclipse-temurin:17-jre

# Add a volume pointing to /tmp
VOLUME /tmp

# Copy the jar file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app.jar"]