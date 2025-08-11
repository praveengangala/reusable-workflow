# Use official Node.js runtime as base image
FROM node:18-alpine

# Create app directory inside container
WORKDIR /app

# Copy package.json & package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
