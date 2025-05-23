FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file into the container
COPY build/libs/service_registry-0.0.1-SNAPSHOT.jar service_registry.jar

# Expose the application's port
EXPOSE 8761

# Run the application
ENTRYPOINT ["java", "-jar", "service_registry.jar"]

#docker build -t service-registry -f Dockerfile .
#docker run -d --name service-registry -p 8761:8761 service-registry