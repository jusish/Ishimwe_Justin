# Dockerfile for a Node.js application
# Use the official Node.js image as a base
FROM node:22-alpine
# Set the working directory in the container
WORKDIR /app
# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./
# Install the application dependencies
RUN npm install
# Copy the rest of the application code to the working directory
COPY . .
# Expose the port the app runs on
EXPOSE 3000
# Set the environment variable for the Node.js application
ENV NODE_ENV=development
# Start the application using npm
CMD ["npm", "run", "dev"]
