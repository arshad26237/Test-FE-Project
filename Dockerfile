# Stage 2: Serve the application
FROM node:18 as runner

# Set working directory
WORKDIR /app

# Copy the built files from the builder stage
COPY dist/hello-world/browser .

# Install http-server if not already installed
RUN npm install -g http-server

# Expose the necessary port
EXPOSE 80

# Start the application using http-server
CMD ["http-server", "-p", "80"]
#CMD [ "npm", "start" ]