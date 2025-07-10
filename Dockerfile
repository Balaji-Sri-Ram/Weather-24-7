# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy everything in your folder to nginx's HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to the web
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
