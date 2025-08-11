FROM alpine:3.18

WORKDIR /app

# Copy all your repo files into the container
COPY . .

# Simple command to keep container alive
CMD ["sh", "-c", "echo 'Hello from auth-service container' && sleep infinity"]
