# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Set the working directory to the default Nginx public folder
WORKDIR /usr/share/nginx/html

# Remove the default Nginx welcome page
RUN rm -rf ./*

# Copy the HTML file into the container
# Using a wildcard to ensure the build finds the file even if naming varies slightly
# We rename it to index.html so Nginx serves it as the entry point
COPY *.html index.html

# Expose port 80 to allow traffic to the web server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
