# Use Node.js as the base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the project files
COPY . .

# Expose a different port (3001 to avoid conflict)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
