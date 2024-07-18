# Use a minimal base image for C programs
FROM debian:stable-slim

# Set up environment
ENV DEBIAN_FRONTEND=noninteractive

# Create a working directory inside the container
WORKDIR /usr/src/mycserver

# Install GCC compiler
RUN apt-get update && apt-get install -y gcc

# Copy your source code into the container
COPY main.c .

# Compile the server
RUN gcc -o main main.c

# Expose port 8080
EXPOSE 8080

# Run the server when the container starts
CMD ["./main"]


