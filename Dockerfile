# Use a lightweight web server image
FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy our static website into nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# nginx starts automatically in the base image

