# Use an official Node.js runtime as a base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the app
COPY . .

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]

